import 'package:flutter/material.dart';

import './sticky.dart';
import './appBar/alpha.dart';

class TimeLine extends StatefulWidget {
  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 30,
          ),

          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 1,
        title: Text(
          'AppBar操作',
          style: TextStyle(
              color: new Color(0xFF333333), fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: (){

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  Sticky()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                margin: EdgeInsets.only(left: 24.0, right: 24,top: 24.0),
                child: Text('吸顶'),
                decoration: new BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, .1),
                    borderRadius:BorderRadius.circular(20.0)
                ),
              ),
            ),
            //固定底部提示
            GestureDetector(
              onTap: (){


              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                margin: EdgeInsets.only(left: 24.0, right: 24,top: 24.0),
                child: Text('滚动隐藏'),
                decoration: new BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, .1),
                    borderRadius:BorderRadius.circular(20.0)
                ),
              ),
            ),
            //浮动底部提示
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  Alpha()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                margin: EdgeInsets.only(left: 24.0, right: 24,top: 24.0),
                child: Text('淡入淡出'),
                decoration: new BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, .1),
                    borderRadius:BorderRadius.circular(20.0)
                ),
              ),
            )
          ],
        ),
      ),
    );

      CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
//          pinned: true,
          pinned: true,
          expandedHeight: 200.0,

          flexibleSpace: FlexibleSpaceBar(
            title: Text('复仇者联盟'),
            background: Image.network(
              'http://img.haote.com/upload/20180918/2018091815372344164.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),


        SliverFixedExtentList(
          itemExtent: 40.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Card(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.primaries[(index % 18)],
                  child: Text('${index}'),
                ),
              );
            },
          ),
        ),


      ],
    );
  }
}
