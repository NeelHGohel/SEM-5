import 'package:adv_flutter_labs/lab_03/mvc_crud_database/db_crud_view.dart';

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

  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController cityController;
  late TextEditingController genderController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.userModel?.name ?? '');
    emailController = TextEditingController(
      text: widget.userModel?.email ?? '',
    );
    phoneController = TextEditingController(
      text: widget.userModel?.phone ?? '',
    );
    cityController = TextEditingController(text: widget.userModel?.city ?? '');
    genderController = TextEditingController(
      text: widget.userModel?.gender ?? '',
    );
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
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          isEdit
                              ? UserListView.controller.editUser(
                                  UserModel(
                                    name: nameController.text,
                                    email: emailController.text,
                                    phone: phoneController.text,
                                    city: cityController.text,
                                    gender: genderController.text,
                                  ),
                                  nameController.text,
                                )
                              : UserListView.controller
                                    .insertUser(
                                      UserModel(
                                        name: nameController.text,
                                        email: emailController.text,
                                        phone: phoneController.text,
                                        city: cityController.text,
                                        gender: genderController.text,
                                      ),
                                    )
                                    .then((value) {
                                      setState(() {});
                                    });
                          debugPrint("Insert User Done");
                          Navigator.pop(context);
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
