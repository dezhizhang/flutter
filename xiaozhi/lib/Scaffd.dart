import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  ScaffoldPage({Key key}) : super(key: key);

  _ScaffoldPageState createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('home')),
          BottomNavigationBarItem(icon: Icon(Icons.business),title: Text('Bussiness')),
          BottomNavigationBarItem(icon: Icon(Icons.school),title: Text('School'))
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.pink,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index; 
          });
        },
      ),
      body: Text('导航'),
    );
  }
}