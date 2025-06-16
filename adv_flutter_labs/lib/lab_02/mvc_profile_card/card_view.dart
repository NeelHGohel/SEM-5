import 'package:flutter/cupertino.dart';

import '../../utils/import_export.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});
  static CardController cardController = CardController();

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<dynamic> userList = CardView.cardController.getUserList();

    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("User List", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .push(
                    MaterialPageRoute(
                      builder: (context) {
                        return CardUserAddPage();
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

      body: userList.isNotEmpty
          ? ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                dynamic user = userList[index];
                // return ListTile(
                //   title: Text(
                //     "Name : ${user[CARD_USER_NAME]}",
                //     style: TextStyle(fontWeight: FontWeight.bold),
                //   ),
                //   subtitle: Text("E-mail ${user[CARD_USER_EMAIL]}"),
                //
                //   onTap: () {
                //
                //   },
                //   trailing: SizedBox(
                //     width: 96,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       children: [
                //         IconButton(
                //           onPressed: () {
                //             Navigator.of(context)
                //                 .push(
                //                   MaterialPageRoute(
                //                     builder: (context) {
                //                       return CardUserAddPage(
                //                         user: CardView.cardController
                //                             .getUserList()[index],
                //                       );
                //                     },
                //                   ),
                //                 )
                //                 .then((value) {
                //                   setState(() {});
                //                 });
                //           },
                //           icon: Icon(Icons.edit),
                //           color: Colors.blue,
                //         ),
                //         IconButton(
                //           onPressed: () {
                //             showDialog(
                //               context: context,
                //               builder: (context) {
                //                 return CupertinoAlertDialog(
                //                   title: Text("Are you sure?"),
                //                   actions: [
                //                     CupertinoDialogAction(
                //                       onPressed: () {
                //                         CardView.cardController.deleteUserList(
                //                           index,
                //                         );
                //                         Navigator.pop(context);
                //                         setState(() {});
                //                       },
                //                       isDestructiveAction: true,
                //                       child: Text("Yes"),
                //                     ),
                //                     CupertinoDialogAction(
                //                       onPressed: () {
                //                         Navigator.pop(context);
                //                       },
                //                       isDefaultAction: true,
                //                       child: Text("No"),
                //                     ),
                //                   ],
                //                 );
                //               },
                //             );
                //           },
                //           icon: Icon(Icons.delete),
                //           color: Colors.red,
                //         ),
                //       ],
                //     ),
                //   ),
                // );

                return GestureDetector(
                  onTap: () {
                    // Handle onTap action
                    Navigator.of(context)
                        .push(
                          MaterialPageRoute(
                            builder: (context) => CardDetailDesignPage(
                              user: CardView.cardController
                                  .getUserList()[index],
                            ),
                          ),
                        )
                        .then((value) => setState(() {}));
                  },
                  child: Card(
                    shadowColor: Colors.black,
                    surfaceTintColor: Colors.black,
                    color: Color(0xFF3A3A3A),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  "Name: ${user[CARD_USER_NAME]}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.edit, color: Colors.blue),
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(
                                        MaterialPageRoute(
                                          builder: (context) => CardUserAddPage(
                                            user: CardView.cardController
                                                .getUserList()[index],
                                          ),
                                        ),
                                      )
                                      .then((value) => setState(() {}));
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => CupertinoAlertDialog(
                                      title: Text("Are you sure?"),
                                      actions: [
                                        CupertinoDialogAction(
                                          onPressed: () {
                                            CardView.cardController
                                                .deleteUserList(index);
                                            Navigator.pop(context);
                                            setState(() {});
                                          },
                                          isDestructiveAction: true,
                                          child: Text("Yes"),
                                        ),
                                        CupertinoDialogAction(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          isDefaultAction: true,
                                          child: Text("No"),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          Text(
                            "City: ${user[CARD_USER_CITY]}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          : Center(child: Text("No User Found")),
    );
  }
}
