import '../../utils/import_export.dart';

class CardUserAddPage extends StatefulWidget {
  final dynamic user;
  const CardUserAddPage({super.key, this.user});

  @override
  State<CardUserAddPage> createState() => _CardUserAddPageState();
}

class _CardUserAddPageState extends State<CardUserAddPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(
      text: widget.user != null ? widget.user[CARD_USER_NAME] : '',
    );
    emailController = TextEditingController(
      text: widget.user != null ? widget.user[CARD_USER_EMAIL] : '',
    );
    phoneController = TextEditingController(
      text: widget.user != null ? widget.user[CARD_USER_PHONE] : '',
    );
    cityController = TextEditingController(
      text: widget.user != null ? widget.user[CARD_USER_CITY] : '',
    );
    genderController = TextEditingController(
      text: widget.user != null ? widget.user[CARD_USER_GENDER] : '',
    );
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.user != null;

    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? "Edit User" : "Add User")),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                  ElevatedButton(
                    onPressed: () {
                      if (widget.user != null) {
                        int index = CardView.cardController
                            .getUserList()
                            .indexOf(widget.user);
                        widget.user[CARD_USER_NAME] = nameController.text
                            .toString();
                        widget.user[CARD_USER_EMAIL] = emailController.text
                            .toString();
                        widget.user[CARD_USER_PHONE] = phoneController.text
                            .toString();
                        widget.user[CARD_USER_GENDER] = genderController.text
                            .toString();
                        widget.user[CARD_USER_CITY] = cityController.text
                            .toString();
                        CardView.cardController.editUserList(
                          index,
                          widget.user,
                        );
                      } else {
                        Map<dynamic, dynamic> newUser = {};
                        newUser[CARD_USER_NAME] = nameController.text
                            .toString();
                        newUser[CARD_USER_EMAIL] = emailController.text
                            .toString();
                        newUser[CARD_USER_PHONE] = phoneController.text
                            .toString();
                        newUser[CARD_USER_GENDER] = genderController.text
                            .toString();
                        newUser[CARD_USER_CITY] = cityController.text
                            .toString();
                        CardView.cardController.addUserList(newUser);
                      }
                      Navigator.pop(context);
                    },
                    child: Text(isEdit ? "Update" : "Add"),
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
