import 'package:adv_flutter_labs/lab_02/mvc_A1/const.dart';
import 'package:adv_flutter_labs/lab_02/mvc_A1/view.dart';
import 'package:adv_flutter_labs/lab_03/mvc_crud_simple/crud_view.dart';
import 'package:flutter/material.dart';

class CrudAddPage extends StatefulWidget {
  final dynamic user;
  const CrudAddPage({super.key, this.user});

  @override
  State<CrudAddPage> createState() => _CrudAddPageState();
}

class _CrudAddPageState extends State<CrudAddPage> {
  late TextEditingController nameController;
  late TextEditingController rollController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(
      text: widget.user != null ? widget.user[NAME] : '',
    );
    rollController = TextEditingController(
      text: widget.user != null ? widget.user[ROLL] : '',
    );
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.user != null;

    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? "Edit User" : "Add User")),
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
              keyboardType: TextInputType.numberWithOptions(),
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
                if (widget.user != null) {
                  int index = CRUDView.crudController.getUserList().indexOf(
                    widget.user,
                  );
                  widget.user[NAME] = nameController.text.toString();
                  widget.user[ROLL] = rollController.text.toString();
                  widget.user[IS_FAV] = widget.user[IS_FAV] ?? false;
                  CRUDView.crudController.editUserList(index, widget.user);
                } else {
                  Map<dynamic, dynamic> newUser = {};
                  newUser[NAME] = nameController.text.toString();
                  newUser[ROLL] = rollController.text.toString();
                  newUser[IS_FAV] = false;
                  CRUDView.crudController.addUserList(newUser);
                }
                Navigator.pop(context);
              },
              child: Text(isEdit ? "Update" : "Add"),
            ),
          ],
        ),
      ),
    );
  }
}
