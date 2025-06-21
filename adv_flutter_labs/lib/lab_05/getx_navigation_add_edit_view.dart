import '../utils/import_export.dart';

class GetxNavigationAddEditView extends StatelessWidget {
  const GetxNavigationAddEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add/Edit Page")),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text("Tap to back"),
        ),
      ),
    );
  }
}
