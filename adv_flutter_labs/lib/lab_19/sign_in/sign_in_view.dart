import 'package:google_sign_in/google_sign_in.dart';

import '../../utils/import_export.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign-in", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(),
            SizedBox(height: 8),
            TextFormField(),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                GoogleSignIn signIn = GoogleSignIn.instance;
                await signIn.initialize(
                  serverClientId:
                      "121084979976-ag1v1ql3f3t7m9ngn18tpgtsl83lpq7a.apps.googleusercontent.com",
                );
                GoogleSignInAccount account = await signIn.authenticate(
                  scopeHint: ['email'],
                );
                print("Google account details $account");
              },
              child: Text("Google Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
