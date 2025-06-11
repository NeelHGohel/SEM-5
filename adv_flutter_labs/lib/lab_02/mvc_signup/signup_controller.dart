
import '../../utils/import_export.dart';

class SignupController {
  SignupModel model = SignupModel();

  void addUserInList(user) => model.addUserInList(user);

  List<dynamic> getUserList() => model.getUserInList();

  String? nameValidator(value) => model.nameValidator(value);
  String? emailValidator(value) => model.emailValidator(value);
  String? phoneValidator(value) => model.phoneValidator(value);
  String? passwordValidator(value) => model.passwordValidator(value);
  String? confirmPasswordValidator({value, password}) =>
      model.confirmPasswordValidator(password: password, value: value);
}
