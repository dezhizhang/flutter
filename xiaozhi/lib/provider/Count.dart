import 'package:flutter/material.dart';

class Count with  ChangeNotifier{
  int _count = 0;
  int get count => count;

  increment() {
    this._count++;
    notifyListeners();

  }


}