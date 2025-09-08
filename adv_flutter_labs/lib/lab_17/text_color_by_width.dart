import '../utils/import_export.dart';

class TextColorByWidth extends StatelessWidget {
  const TextColorByWidth({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final bool isWeb = screenWidth > 700;
    final String displayText = isWeb ? 'WEB' : 'MOBILE';
    final Color bgColor = isWeb ? Colors.blue : Colors.blue;

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Text(
          displayText,
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
