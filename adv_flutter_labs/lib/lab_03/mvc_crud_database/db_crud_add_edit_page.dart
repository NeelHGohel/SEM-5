import '../../utils/import_export.dart';

class UserAddEditPage extends StatefulWidget {
  UserModel? userModel;
  UserAddEditPage({super.key, this.userModel});

  @override
  State<UserAddEditPage> createState() => _UserAddEditPageState();
}

class _UserAddEditPageState extends State<UserAddEditPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  UserListView userListView = UserListView();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // nameController = TextEditingController(text: widget.userModel?.name ?? '');
    // emailController = TextEditingController(
    //   text: widget.userModel?.email ?? '',
    // );
    // phoneController = TextEditingController(
    //   text: widget.userModel?.phone ?? '',
    // );
    // cityController = TextEditingController(text: widget.userModel?.city ?? '');
    // genderController = TextEditingController(
    //   text: widget.userModel?.gender ?? '',
    // );
    if (widget.userModel != null) {
      nameController.text = widget.userModel!.name;
      emailController.text = widget.userModel!.email;
      phoneController.text = widget.userModel!.phone;
      cityController.text = widget.userModel!.city;
      genderController.text = widget.userModel!.gender;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.userModel != null;

    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? "Edit User" : "Add User")),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      hintText: 'Enter your Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter your Phone Number',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
                  TextFormField(
                    controller: cityController,
                    decoration: InputDecoration(
                      labelText: 'City',
                      hintText: 'Enter your City',
                      prefixIcon: Icon(Icons.pin_drop),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
                  TextFormField(
                    controller: genderController,
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      hintText: 'Enter your Gender',
                      prefixIcon: Icon(Icons.person_pin_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          if (widget.userModel == null) {
                            UserModel newUser = UserModel(
                              name: nameController.text.trim(),
                              email: emailController.text.trim(),
                              phone: phoneController.text.trim(),
                              city: cityController.text.trim(),
                              gender: genderController.text.trim(),
                            );
                            await UserListView.controller.insertUser(newUser);
                            Navigator.pop(context, true);
                          } else {
                            UserModel updatedUser = UserModel(
                              name: nameController.text.trim(),
                              email: emailController.text.trim(),
                              phone: phoneController.text.trim(),
                              city: cityController.text.trim(),
                              gender: genderController.text.trim(),
                            );
                            debugPrint(
                              ":::::::::::::::::::::::New User ${updatedUser.name}",
                            );
                            await UserListView.controller.editUser(
                              user: updatedUser,
                            );
                            Navigator.pop(context, true);
                          }

                          // isEdit
                          //     ? UserListView.controller.editUser(
                          //         UserModel(
                          //           name: nameController.text,
                          //           email: emailController.text,
                          //           phone: phoneController.text,
                          //           city: cityController.text,
                          //           gender: genderController.text,
                          //         ),
                          //         nameController.text,
                          //       )
                          //     // .then((value) {
                          //     //   setState(() {});
                          //     // })
                          //     : UserListView.controller.insertUser(
                          //         UserModel(
                          //           name: nameController.text,
                          //           email: emailController.text,
                          //           phone: phoneController.text,
                          //           city: cityController.text,
                          //           gender: genderController.text,
                          //         ),
                          //       );
                          // // .then((value) {
                          // //   setState(() {});
                          // // });
                          //
                          // debugPrint(
                          //   "::::::::::::Insert User Done::::::::::::::::",
                          // );
                          // setState(() {});
                          // Navigator.pop(context);
                        },
                        child: Text(isEdit ? "Update" : "Add"),
                      ),
                      SizedBox(width: 10),

                      ElevatedButton(
                        onPressed: () {
                          _formKey.currentState?.reset();
                          nameController.clear();
                          emailController.clear();
                          phoneController.clear();
                          cityController.clear();
                          genderController.clear();
                          // passwordController.clear();
                          // confirmPasswordController.clear();
                        },
                        child: Text(BTN_RESET_SIGN_UP_NAME),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
