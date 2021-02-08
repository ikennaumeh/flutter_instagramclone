class ValidationMixin{
  String validateFirstName(String firstName){
    if(firstName.split('').length < 2){
      return 'Enter Your First Name';
    }
    return null;
  }

  String validateLastName(String lastName){
    if(lastName.split('').length < 2){
      return 'Enter Your Last Name';
    }
    return null;
  }

  String validateEmail(String email){
    bool emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
    ).hasMatch(email);
    if(!emailValid){
      return "Enter a valid Email Address";
    }
    return null;
  }

  String validatePhoneNumber(String phoneNumber){
    if(phoneNumber.length < 10){
      return 'Enter a valid Phone Number';
    }
    return null;
  }

  String validatePassword(String password){
    if(password.length < 6){
      return 'Password should be more than 5 characters';
    }
    return null;
  }
}