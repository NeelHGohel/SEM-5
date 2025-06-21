import '../utils/import_export.dart';

class GetxNavigationView extends StatelessWidget {
  const GetxNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx Navigation")),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.to(UserAddEditPage());
          },
          child: Text("Tap Here"),
        ),
      ),
    );
  }
}
