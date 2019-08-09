 import 'package:flutter/material.dart';

class Cart with ChangeNotifier{
  List _cartList = [];
  int get cartNum => this._cartList.length;
  List get cartList => this._cartList;

  addList(value) {
    this._cartList.add(value);
    notifyListeners();
  }
}