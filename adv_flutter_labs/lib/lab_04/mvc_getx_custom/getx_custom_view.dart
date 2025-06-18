import '../../utils/import_export.dart';

class GetxCustomView extends StatelessWidget {
  const GetxCustomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Custom", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                isDismissible: true,
                enableDrag: true,
                elevation: 3,
                isScrollControlled: true,

                exitBottomSheetDuration: Duration(milliseconds: 500),

                Container(
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.limeAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Center(
                              child: ListTile(title: Text('Hello')),
                            );
                          },
                          itemCount: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            icon: Icon(Icons.open_in_browser),
            color: Colors.white,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,

        onPressed: () {
          Get.dialog(
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 230,
                width: 300,

                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.warning, size: 50, color: Colors.red),
                          ListTile(
                            title: Text(
                              "Are you sure ??",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              "You want to do this",
                              style: TextStyle(color: Colors.black),

                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                  Get.showSnackbar(
                                    GetBar(
                                      titleText: Text(
                                        "You Pressed On the Yes",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      messageText: Text("Am I Right"),
                                      duration: Duration(seconds: 3),
                                      backgroundColor: Colors.white,
                                      borderRadius: 30,
                                      borderWidth: 3,
                                      isDismissible: true,
                                      showProgressIndicator: true,
                                      snackPosition: SnackPosition.BOTTOM,
                                      barBlur: 50,
                                      progressIndicatorBackgroundColor:
                                          Colors.black,
                                      overlayBlur: 10,

                                      icon: Icon(Icons.sailing),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Yes",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                              SizedBox(width: 10),
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  "No",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        child: Icon(Icons.open_in_new, color: Colors.black),
      ),
      backgroundColor: Colors.black,
    );
  }
}

// title: "Are you sure ??",
// middleText: "You want do this",
// textConfirm: "Yes",
// textCancel: "No",
// onConfirm: () {
// Get.back();
// Get.snackbar(
// "You Pressed On the Yes",
// "Am I right ??",
// snackPosition: SnackPosition.BOTTOM,
// );
// },
// onCancel: () {
// Get.back();
// },
