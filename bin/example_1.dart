enum Animal { dog, cat, bird }

extension ApiParser on Animal {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

extension EnumParser on String {
  Animal toAnimal() {
    return Animal.values.firstWhere(
        (e) => e.toString().toLowerCase() == 'animal.$this'.toLowerCase(),
        orElse: () => null);
  }
}

void main() {
  var bird = Animal.bird;
  print(bird.toShortString()); //prints 'bird'

  var valueFromServer = 'cat';
  Animal animal = valueFromServer.toAnimal();
  print(animal.toString()); //prints Animal.cat
  assert(animal == Animal.cat); //true
}
