import '../utils/import_export.dart';

class ScreenHeightWidth extends StatelessWidget {
  const ScreenHeightWidth({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Screen Size Example")),
      body: Center(
        child: Text(
          "Width: $width\nHeight: $height",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
