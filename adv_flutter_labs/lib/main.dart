import 'package:adv_flutter_labs/lab_03/mvc_crud_simple/crud_view.dart';
import 'package:flutter/material.dart';

import 'lab_02/mvc_A1/view.dart';
import 'lab_02/mvc_profile_card/card_view.dart';
import 'lab_02/mvc_signup/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // home: DisplayUser(),
      // home: CardView(),
      // home: SignupView(),
      home: CRUDView(),
    );
  }
}
