extension on Duration {
  String toHms() {
    return toString().split('.').first.padLeft(8, '0');
  }
}

extension on int {
  Duration toMinutes() {
    return Duration(minutes: this);
  }
}

void main() {
  var eventDuration =
      Duration(hours: 8, minutes: 30, seconds: 30, milliseconds: 50);

  print(eventDuration); //prints 248:30:30.050000
  print(eventDuration.toHms()); //prints 08:30:30
  print(300.toMinutes().toHms()); //prints 05:00:00
}
