import 'package:flutter/material.dart';
import 'package:twitter/models/user.dart';

class CurrentUser with ChangeNotifier {
  late User _user;

  User get user => _user;

  set user(User value) {
    _user = value;
    notifyListeners();
  }
}
