import '../utils/import_export.dart';

class GetxNavigationListViewPage extends StatelessWidget {
  const GetxNavigationListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx Navigation")),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.to(GetxNavigationAddEditView());
          },
          child: Text("Tap Here"),
        ),
      ),
    );
  }
}
