import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;
  bool isTrunkLock = true;

  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }

  void updateLeftDoorLock() {
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }

  void UpdateBonnetLock() {
    isBonnetLock = !isBonnetLock;
    notifyListeners();
  }

  void UpdateTrunkLock() {
    isTrunkLock = !isTrunkLock;
    notifyListeners();
  }
}
