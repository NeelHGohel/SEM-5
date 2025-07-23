import '../utils/import_export.dart';

class ExceptionSnackbar extends StatelessWidget {
  const ExceptionSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Error SnakeBar")),
      body: ElevatedButton(
        onPressed: () {
          Get.snackbar(
            "You Pressed On the Tap",
            "Am I right ??",
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: Text("Tap"),
      ),
    );
  }
}
