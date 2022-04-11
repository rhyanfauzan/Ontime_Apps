import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProviderOption with ChangeNotifier{

  bool _isActive = true;

  bool get isActive => _isActive;

  set isActive (bool newValue){
    _isActive = newValue;
    notifyListeners();
  }

  get color => _isActive ? Colors.blue : Colors.pink;

  get activeColor =>  _isActive ? Colors.blue : Colors.grey;
  get whiteColor =>  _isActive ? Colors.grey : Colors.blue;

  double get borderCardActive => _isActive ? 3 : 1;
  double get borderCard => _isActive ? 1 : 3;

}
