import 'package:get/get.dart';

import '../utils/import_export.dart';

class ChangeStringRealTime extends StatelessWidget {
  ChangeStringRealTime({super.key});
  RxString name = "".obs;
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Changes using getx with stless widget")),
      body: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 10),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),

          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              nameController.text = "";
            },
            child: Text("Clear"),
          ),
        ],
      ),
    );
  }
}
