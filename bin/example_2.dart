class User {
  int id;
  String name;

  User(this.id, this.name);
}

extension on List<User> {
  List<int> toIdsList() {
    var userIds = <int>[];
    for (var user in this) {
      userIds.add(user.id);
    }
    return userIds;
  }
}

void main() {
  var users = [User(1, 'Jack'), User(2, 'Emma'), User(3, 'James')];
  deleteUsers(users.toIdsList()); //correct!
  print(users.toIdsList()); //prints [1, 2, 3]
}

void deleteUsers(List<int> userIds) {
  //send to server...
}
