import 'package:adv_flutter_labs/lab_02/mvc_signup/signup_model.dart';

class SignupController {
  SignupModel model = SignupModel();

  void addUserInList(user) => model.addUserInList(user);

  List<dynamic> getUserList() => model.getUserInList();
}
