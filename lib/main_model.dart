import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String appmessage = 'testA';

  void changeAppMessage() {
    appmessage = 'OOOOOO';
    notifyListeners();
  }
}