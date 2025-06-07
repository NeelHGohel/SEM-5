import 'package:adv_flutter_labs/lab_02/mvc_A1/add_page.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class DisplayUser extends StatefulWidget {
  const DisplayUser({super.key});
  static Controller controller = Controller();

  @override
  State<DisplayUser> createState() => _DisplayUserState();
}

class _DisplayUserState extends State<DisplayUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(
                    MaterialPageRoute(
                      builder: (context) {
                        return AddPage();
                      },
                    ),
                  )
                  .then((value) {
                    setState(() {});
                  });
            },

            icon: Icon(Icons.add),
          ),
        ],
      ),

      body: DisplayUser.controller.getUserList().isNotEmpty
          ? ListView.builder(
              itemCount: DisplayUser.controller.getUserList().length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    DisplayUser.controller.getUserList()[index]['Name'],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                  ),
                );
              },
            )
          : Center(child: Text("No User Found")),
    );
  }
}
