

import 'package:flutter/cupertino.dart';

import '../../utils/import_export.dart';

class CRUDView extends StatefulWidget {
  const CRUDView({super.key});
  static CrudController crudController = CrudController();

  @override
  State<CRUDView> createState() => _CRUDViewState();
}

class _CRUDViewState extends State<CRUDView> {
  String query = "";
  String selectedFilter = 'Recently Added';
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<dynamic> userList = CRUDView.crudController.getUserList();
    List<dynamic> filterList = userList.where((user) {
      final name = user[NAME]?.toString().toLowerCase() ?? '';
      final roll = user[ROLL]?.toString().toLowerCase() ?? '';
      return name.contains(query.toLowerCase()) ||
          roll.contains(query.toLowerCase());
    }).toList();

    // print(filterList);
    // print(userList);
    void applySorting() {
      if (selectedFilter == 'A-Z') {
        filterList.sort(
          (a, b) =>
              (a[NAME]?.toString() ?? '').compareTo(b[NAME]?.toString() ?? ''),
        );
      } else if (selectedFilter == 'Z-A') {
        filterList.sort(
          (a, b) =>
              (b[NAME]?.toString() ?? '').compareTo(a[NAME]?.toString() ?? ''),
        );
      }
      // else if (selectedFilter == 'By RollNo (0-9)') {
      //   filterList.sort((a, b) =>
      //       (a[ROLL]?.toString() ?? '').compareTo(b[ROLL]?.toString() ?? ''));
      // } else if (selectedFilter == 'By RollNo (9-0)') {
      //   filterList.sort((a, b) =>
      //       (b[ROLL]?.toString() ?? '').compareTo(a[ROLL]?.toString() ?? ''));
      // }
    }

    applySorting();
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
                        return CrudAddPage();
                      },
                    ),
                  )
                  .then((value) {
                    setState(() {});
                  });
            },

            icon: Icon(Icons.add),
          ),

          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Filter Users'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: const Text('Recently Added'),
                          onTap: () {
                            setState(() {
                              selectedFilter = 'Recently Added';
                              Navigator.of(context).pop();
                              applySorting();
                            });
                          },
                        ),
                        ListTile(
                          title: const Text('By Name (A-Z)'),
                          onTap: () {
                            setState(() {
                              selectedFilter = 'A-Z';
                              Navigator.of(context).pop();
                              applySorting();
                            });
                          },
                        ),
                        ListTile(
                          title: const Text('By Name (Z-A)'),
                          onTap: () {
                            setState(() {
                              selectedFilter = 'Z-A';
                              Navigator.of(context).pop();
                              applySorting();
                            });
                          },
                        ),
                        // ListTile(
                        //   title: const Text('By Age (0-9)'),
                        //   onTap: () {
                        //     setState(() {
                        //       selectedFilter = 'By Age (0-9)';
                        //       Navigator.of(context).pop();
                        //       applySorting();
                        //     });
                        //   },
                        // ),
                        // ListTile(
                        //   title: const Text('By Age (9-0)'),
                        //   onTap: () {
                        //     setState(() {
                        //       selectedFilter = 'By Age (9-0)';
                        //       Navigator.of(context).pop();
                        //       applySorting();
                        //     });
                        //   },
                        // ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search by Name or Roll No.',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (val) {
                setState(() {
                  query = val;
                });
              },
            ),
          ),

          Expanded(
            child: filterList.isNotEmpty
                ? ListView.builder(
                    itemCount: filterList.length,
                    itemBuilder: (context, index) {
                      dynamic user = filterList[index];
                      bool isFav = user[IS_FAV] ?? false;
                      return ListTile(
                        title: Text(
                          "Name : ${user[NAME]}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Roll No. ${user[ROLL]}"),
                        onTap: () {
                          // Navigator.of(context)
                          //     .push(
                          //       MaterialPageRoute(
                          //         builder: (context) {
                          //           return AddPage(
                          //             user: CRUDView.crudController
                          //                 .getUserList()[index],
                          //           );
                          //         },
                          //       ),
                          //     )
                          //     .then((value) {
                          //       setState(() {});
                          //       applySorting();
                          //     });
                        },

                        leading: IconButton(
                          onPressed: () {
                            CRUDView.crudController.toggleFav(user, index);
                            setState(() {});
                          },
                          icon: Icon(
                            isFav ? Icons.favorite : Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                        trailing: SizedBox(
                          width: 96, // Adjust based on your icon size
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return AddPage(
                                              user: CRUDView.crudController
                                                  .getUserList()[index],
                                            );
                                          },
                                        ),
                                      )
                                      .then((value) {
                                        setState(() {});
                                        applySorting();
                                      });
                                },
                                icon: Icon(Icons.edit),
                                color: Colors.blue,
                              ),
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return CupertinoAlertDialog(
                                        title: Text("Are you sure?"),
                                        actions: [
                                          CupertinoDialogAction(
                                            onPressed: () {
                                              CRUDView.crudController
                                                  .deleteUserList(index);
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                            isDestructiveAction: true,
                                            child: Text("Yes"),
                                          ),
                                          CupertinoDialogAction(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            isDefaultAction: true,
                                            child: Text("No"),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: Icon(Icons.delete),
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : Center(child: Text("No User Found")),
          ),
        ],
      ),
    );
  }
}
