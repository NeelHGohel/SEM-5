import 'package:adv_flutter_labs/lab_02/mvc_1/controller.dart';
import 'package:flutter/material.dart';

class DisplayUser extends StatefulWidget {

  const DisplayUser({super.key});

  @override
  State<DisplayUser> createState() => _DisplayUserState();
}

class _DisplayUserState extends State<DisplayUser> {
  final Controller controller = Controller();

  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User List")),

      body: ListView.builder(
        itemCount: controller.userList.length,
        itemBuilder: (context, index) {
          if (isFav) {
            return ListTile(
              title: Text(controller.userList[index].name),
              trailing: IconButton(
                onPressed: () {
                  isFav = true;
                },
                icon: Icon(Icons.favorite),
              ),
            );
          } else {
            return ListTile(
              title: Text(controller.userList[index].name),
              subtitle: Text("${controller.userList[index].roll}"),
              trailing: IconButton(
                onPressed: () {
                  isFav = true;
                },
                icon: Icon(Icons.favorite),
              ),
            );
          }
        },
      ),
    );
  }
}
