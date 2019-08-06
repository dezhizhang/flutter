import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  ImagePage({Key key}) : super(key: key);

  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图片组件'),
      ),
      body:Center(
        // child: Container(
        //   width: 1200,
        //   height: 300,
        //   child: Image.network(
        //     'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
        //     fit: BoxFit.cover,
        //     repeat: ImageRepeat.repeatX,
        //     alignment: Alignment.center
        //   ),
        // ),
        // child: Container(
        //   width: 300,
        //   height: 300,
        //   decoration: BoxDecoration(
        //     color: Colors.pink,
        //     borderRadius: BorderRadius.circular(150),
        //     border: Border.all(width: 1,color: Colors.pink),
        //     image: DecorationImage(
        //       image: NetworkImage('http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg'),R
        //       fit: BoxFit.cover
        //     )
        //   ),
        // ),
        child: Container(
         
          child: ClipOval(
            
            child: Image.network(
              'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
              
              
            ),
          )
        ),
      )
    );
  }
}