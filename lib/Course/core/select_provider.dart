

import 'package:flutter/material.dart';

class SelectData with ChangeNotifier{

int selectGender = 0;

  changeButtonValue(int? value) {
      selectGender = value!;
      notifyListeners();
  }

  bool _isChecked = false;
  bool _isSwitch = false;

}