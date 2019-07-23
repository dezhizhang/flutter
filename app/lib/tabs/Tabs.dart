import 'package:flutter/material.dart';
import '../pages/Home.dart';
import '../pages/Category.dart';
import '../pages/Cart.dart';
import '../pages/People.dart';
import '../utils/ScreenAdaper.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  PageController pageController;

  void initState() {
    super.initState();
    this.pageController = new PageController(initialPage: this.currentIndex);
  }

  List<Widget> pageList = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    PeoplePage()
  ];
  @override
  Widget build(BuildContext context) {
    ScreenAdaper.init(context);
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.center_focus_weak,size: 28, color: Colors.white),
      //     onPressed: () {

      //     },
      //   ),
      //   title: InkWell(
      //     child: Container(
      //       height: ScreenAdaper.height(68),
      //       decoration: BoxDecoration(
      //         color: Color.fromRGBO(233, 233, 233, 0.8),
      //         borderRadius: BorderRadius.circular(30)
      //       ),
      //       padding: EdgeInsets.only(left:10),
      //       child: Row(
      //         children: <Widget>[
      //           Icon(Icons.search),
      //           Text('笔记本',style: TextStyle(
      //             fontSize: ScreenAdaper.fontSize(28)
      //           ))
      //         ],
      //       ),
      //     ),
      //     onTap: () {
      //       Navigator.of(context).pushNamed('/search');
      //     },
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.message,size: 28,color: Colors.white),
      //       onPressed: () {

      //       },
      //     )
      //   ],
      // ),
      body: PageView(
        controller: this.pageController,
        children: this.pageList,
        onPageChanged: (index) {
          setState(() {
            this.currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        onTap: (index) {
           setState(() {
             this.currentIndex = index; 
             this.pageController.jumpToPage(index);
           });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('购物车')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('我的')
          )
        ],
      ),
    );
  }
}