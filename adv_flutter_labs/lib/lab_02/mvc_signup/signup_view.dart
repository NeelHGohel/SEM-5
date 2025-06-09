import 'package:adv_flutter_labs/lab_02/mvc_signup/signup_controller.dart';
import 'package:flutter/material.dart';

import '../../utils/const.dart';

class SignupView extends StatefulWidget {
  SignupView({super.key});


  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            textFormField(
              controller: nameController,
              hint: "Enter Name",
              icon: Icons.person,
              label: "Name",
            ),

            SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
            textFormField(
              controller: emailController,
              hint: "Enter E-mail",
              icon: Icons.email,
              label: "E-mail",
            ),

            SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
            textFormField(
              controller: phoneController,
              hint: "Enter Phone-Number",
              icon: Icons.phone,
              label: "Phone",
            ),

            SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
            textFormField(
              controller: passwordController,
              hint: "Enter Password",
              icon: Icons.password,
              label: "Password",
            ),

            SizedBox(height: TEXT_FORM_FIELD_HEIGHT),
            textFormField(
              controller: confirmPasswordController,
              hint: "Confirm Password",
              icon: Icons.confirmation_number,
              label: "Confirm Password",
            ),

            SizedBox(height: TEXT_FORM_FIELD_HEIGHT),

            ElevatedButton(
              onPressed: () {
                Map<String, dynamic> newUser = {};
                newUser[NAME] = nameController.text.toString();
                newUser[EMAIL] = emailController.text.toString();
                newUser[PHONE] = phoneController.text.toString();
                newUser[PASSWORD] = passwordController.text.toString();

                signupController.addUserInList(newUser);
                setState(() {

                });
              },
              child: Text(BTN_CONFIRM_SIGN_UP_NAME),
            ),
          ],
        ),
      ),
    );
  }

  Widget textFormField({label, hint, icon, controller}) {
    return TextFormField(
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
