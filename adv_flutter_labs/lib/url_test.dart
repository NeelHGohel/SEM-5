import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class UrlTest extends StatelessWidget {
  const UrlTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Call Now'),
          onPressed: () async {
            final Uri url = Uri(scheme: 'tel', path: '1234567890');
              await launchUrl(url);
            },
        ),
      ),
    );
  }
}
