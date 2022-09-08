import 'package:flutter/foundation.dart';

class ScrollProvider extends ChangeNotifier {
  double pos = 0;

  changePos(double p) {
    pos = p;
    notifyListeners();
  }
}
