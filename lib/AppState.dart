import 'package:flutter/foundation.dart';

class AppState extends ChangeNotifier {
  bool isAdmin = false;

  void setAdminStatus(bool value) {
    isAdmin = value;
    notifyListeners();
  }
}
