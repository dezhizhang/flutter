
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/Card.dart';


 class CartItem extends StatefulWidget {
   CartItem({Key key}) : super(key: key);
 
   _CartItemState createState() => _CartItemState();
 }
 
 class _CartItemState extends State<CartItem> {
   @override
   Widget build(BuildContext context) {
     var cart = Provider.of<Cart>(context);
     return cart.cartList.length >0 ? Column(
       children:cart.cartList.map((value){
         return ListTile(
           title: Text('${value}'),
         );
       }).toList()
     ):Text('没有数据哦');
   }
 }
