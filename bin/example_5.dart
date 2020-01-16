extension Validator on String {
  bool isEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}

void main() {
  var str = 'test@example.com';
  if (str.isEmail()) {
    print('Email!');
  } else {
    print('Not email');
  }
  //prints Email!
}
