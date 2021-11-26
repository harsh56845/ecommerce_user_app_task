// ignore: file_names
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommerce_user_app_task/models/user.dart';

class AuthNotifier extends ChangeNotifier {
  late FirebaseUser _user;

  FirebaseUser get user {
    return _user;
  }

  void setUser(FirebaseUser user) {
    _user = user;
    notifyListeners();
  }

  // Test
  late User _userDetails;

  User get userDetails => _userDetails;

  setUserDetails(User user) {
    _userDetails = user;
    notifyListeners();
  }
}
