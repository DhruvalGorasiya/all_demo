class AuthHelper {
  static validateEmail({required String? email}) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (email == null || email.isEmpty || !regex.hasMatch(email)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  static validatePassword({required String password}) {
    RegExp regex = RegExp(r'^(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (password.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(password)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }
}
