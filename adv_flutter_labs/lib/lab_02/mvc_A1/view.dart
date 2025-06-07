import 'package:adv_flutter_labs/lab_02/mvc_A1/add_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'const.dart';
import 'controller.dart';

class DisplayUser extends StatefulWidget {
  DisplayUser({super.key});
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
                dynamic user = DisplayUser.controller.getUserList()[index];
                bool isFav = user[IS_FAV] ?? false;
                return ListTile(
                  title: Text(
                    "Name : ${user[NAME]}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Roll No. ${user[ROLL]}",
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(
                          MaterialPageRoute(
                            builder: (context) {
                              return AddPage(
                                user: DisplayUser.controller
                                    .getUserList()[index],
                              );
                            },
                          ),
                        )
                        .then((value) {
                          setState(() {});
                        });
                  },

                  leading: IconButton(
                    onPressed: () {
                      DisplayUser.controller.toggleFav(user, index);
                      setState(() {});
                    },
                    icon: Icon(isFav ? Icons.favorite : Icons.favorite_border,color: Colors.red,),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: Text("are you sure ?"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  DisplayUser.controller.deleteUserList(index);
                                  Navigator.pop(context);
                                  setState(() {});
                                },
                                child: Text("delete"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.delete),
                    color: Colors.red,
                  ),
                );
              },
            )
          : Center(child: Text("No User Found")),
    );
  }
}
