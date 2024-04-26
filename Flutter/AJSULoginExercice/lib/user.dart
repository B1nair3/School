// ignore_for_file: unnecessary_this, unused_field

class User {
  String _user = "";
  String _stand = "";

  User(this._user, this._stand);

 String get getUser => this._user;

 set setUser(String user) => this._user = user;

  get getStand => this._stand;

 set setStand( stand) => this._stand = stand;
}