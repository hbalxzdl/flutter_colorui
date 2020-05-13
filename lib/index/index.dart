import 'package:flutter/material.dart';
import '../basics/layout.dart';
import '../basics/background.dart';
import '../basics/text.dart';
import '../basics/button.dart';
import '../basics/avatar.dart';
import '../basics/progress.dart';
import '../basics/shadow.dart';
import '../basics/list.dart';
import '../basics/from.dart';
import '../basics/loading.dart';


class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '基础组件',style: TextStyle(
            color: new Color(0xFF333333), fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
        body:Container(
            child: new SingleChildScrollView(
              child: new Container(
                  width: double.infinity,
                padding: const EdgeInsets.only(bottom: 25.0,top: 25.0),
                child: new Wrap(
                  runSpacing: 12.0,
                  spacing: 12.0,
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    //布局
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Layout()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff1cbbb4),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '布局',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //背景
                    new GestureDetector(

                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Background()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff0081ff),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '背景',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //文本
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => TextPage()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff6739b6),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '文本',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //图标
              new GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ListLayOut()));
                },
                child:new Container(
                  width: 150,
                  height: 90,
                  decoration: new BoxDecoration(
                    color: Color(0xff9c26b0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: new Text(
                    '列表',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ) ,
              ),

                    //按钮
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Buttons()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xffe03997),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '按钮',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    new GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => FormsList()));
                      },
                      child:new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xffa5673f),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '表单',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ) ,
                    ),


                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Avatar()));
                      },
                      child:  new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xffe54d42),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '头像',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Progress()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xfff37b1d),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '进度条',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ) ,
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Shows()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff8dc63f),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '边框',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    new GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => LoadingList()));
                        },
                      child:new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff39b54a),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '加载',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ))
    );

  }
}
