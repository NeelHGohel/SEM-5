import 'package:adv_flutter_labs/lab_02/mvc_signup/signup_controller.dart';
import 'package:flutter/material.dart';

import '../../utils/const.dart';

class SignupView extends StatefulWidget {
  SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  SignupController signupController = SignupController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign-Up Page")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                textFormField(
                  controller: nameController,
                  hint: "Enter Name",
                  icon: Icons.person,
                  label: "Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the name";
                    }
                    return null;
                  },
                ),

                SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
                textFormField(
                  controller: emailController,
                  hint: "Enter E-mail",
                  icon: Icons.email,
                  label: "E-mail",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter email address";
                    }
                    String pattern =
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                    RegExp regex = RegExp(pattern);
                    if (!regex.hasMatch(value)) {
                      return "Please enter a valid email address";
                    }
                    return null;
                  },
                ),

                SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
                textFormField(
                  controller: phoneController,
                  hint: "Enter Phone-Number",
                  icon: Icons.phone,
                  label: "Phone",
                  validator: (value) {
                    if (value!.isEmpty || value.length != 10) {
                      return "Please enter a valid 10-digit mobile number";
                    }
                    return null;
                  },
                ),

                SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
                textFormField(
                  controller: passwordController,
                  hint: "Enter Password",
                  icon: Icons.password,
                  label: "Password",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a password";
                    } else if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),

                SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
                textFormField(
                  controller: confirmPasswordController,
                  hint: "Confirm Password",
                  icon: Icons.password,
                  label: "Confirm Password",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please confirm your password";
                    } else if (value != passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
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

                        Map<String, dynamic> newUser = {};
                        newUser[NAME] = nameController.text.toString();
                        newUser[EMAIL] = emailController.text.toString();
                        newUser[PHONE] = phoneController.text.toString();
                        newUser[PASSWORD] = passwordController.text.toString();

                        signupController.addUserInList(newUser);
                        setState(() {});
                      },
                      child: Text(BTN_CONFIRM_SIGN_UP_NAME),
                    ),
                    SizedBox(width: 10),

                    ElevatedButton(
                      onPressed: () {
                        _formKey.currentState?.reset();
                        nameController.clear();
                        emailController.clear();
                        phoneController.clear();
                        passwordController.clear();
                        confirmPasswordController.clear();
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
    );
  }

  Widget textFormField({label, hint, icon, controller, validator}) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
