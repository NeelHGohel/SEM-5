import 'package:adv_flutter_labs/lab_02/mvc_A1/view.dart';
import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  dynamic user;
   AddPage({super.key, this.user}){
    if(user!=null){
      nameController.text = user['Name'];
      rollController.text = user['roll'];
    }
   }
  TextEditingController nameController = TextEditingController();
  TextEditingController rollController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add User In List")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),



            SizedBox(height: 10),

            TextFormField(
              controller: rollController,
              decoration: InputDecoration(
                labelText: 'Roll Number',
                hintText: 'Enter your Roll Number',
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),



            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Map<String, dynamic> user = {};
                user['Name'] = nameController.text.toString();
                user['roll'] = rollController.text.toString();
                DisplayUser.controller.addUserList(user);
                Navigator.pop(context);
              },

              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
