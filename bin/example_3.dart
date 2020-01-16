import 'dart:convert';

enum Animal { dog, cat, bird }

extension AnimalParser on Animal {
  static Animal fromApi(int val) {
    return Animal.values[val];
  }

  int toApiValue() {
    return this.index;
  }
}

void main() {
  var apiResponse = '''
  {
    "animal": 2
  }
  ''';

  var animal = AnimalParser.fromApi(jsonDecode(apiResponse)['animal']);
  print(animal); //prints Animal.bird

  print(animal.toApiValue()); //prints 2
}
