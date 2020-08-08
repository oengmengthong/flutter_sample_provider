import 'package:flutter/material.dart';

class SendBackProvider with ChangeNotifier{
  String _data;

  String get data => _data;

  void changedata(String d){
    _data = d;
    notifyListeners();
  }
}