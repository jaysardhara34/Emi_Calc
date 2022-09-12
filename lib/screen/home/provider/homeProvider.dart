import 'package:flutter/material.dart';

class homeProvider extends ChangeNotifier {
  double amnt = 0;
  double rs = 0;
  double tr = 0;
  double ans = 0;
  double emi = 0;

  void loanam(double value) {
    amnt = value;
    notifyListeners();
  }

  void intrest(double value) {
    rs = value;
    notifyListeners();
  }

  void time(double value) {
    tr = value;
    notifyListeners();
  }

  void calcu() {
    ans = (amnt*rs*tr)/100;
    notifyListeners();
  }

  void total() {
    emi = amnt+ans;
    notifyListeners();
  }
}
