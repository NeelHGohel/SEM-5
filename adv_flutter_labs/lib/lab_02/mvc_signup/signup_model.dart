class SignupModel {
  List<dynamic> userList = [];

  // late String _name;
  // late String _email;
  // late String _phone;
  // late String _password;
  // late String _confirmPassword;

  void addUserInList(user) {
    userList.add(user);
  }

  List<dynamic> getUserInList() {
    print(userList);
    return userList;
  }

  String? nameValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter the name";
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter email address";
    }
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Please enter a valid email address";
    }
    return null;
  }

  String? phoneValidator(String? value) {
    if (value!.isEmpty || value.length != 10) {
      return "Please enter a valid 10-digit mobile number";
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a password";
    } else if (value.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  String? confirmPasswordValidator({String? value, required String password}) {
    if (value == null || value.isEmpty) {
      return "Please confirm your password";
    } else if (value != password) {
      return "Passwords do not match";
    }
    return null;
  }

  // String get name => _name;
  //
  // set name(String value) {
  //   _name = value;
  // }
  //
  // String get email => _email;
  //
  // set email(String value) {
  //   _email = value;
  // }
  //
  // String get phone => _phone;
  //
  // set phone(String value) {
  //   _phone = value;
  // }
  //
  // String get password => _password;
  //
  // set password(String value) {
  //   _password = value;
  // }
  //
  // String get confirmPassword => _confirmPassword;
  //
  // set confirmPassword(String value) {
  //   _confirmPassword = value;
  // }
}
