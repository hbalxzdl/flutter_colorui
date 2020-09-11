import 'package:flutter/material.dart';

class Alpha extends StatefulWidget {
  @override
  _AlphaState createState() => _AlphaState();
}

class _AlphaState extends State<Alpha> {
  double appBarAlpha = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(
          children: [
            Positioned(
              child: Container(
                child: Column(
                  children: <Widget>[
                    new Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 24.0, right: 24),
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: .5,
                                style: BorderStyle.solid,
                              ))),
                      child: Row(
                        children: <Widget>[Text('列表')],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              child: Container(

                child: Column(
                  children: <Widget>[
                    new Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 24.0, right: 24),
                      decoration: new BoxDecoration(
                          color: Colors.red,
                          border: Border(
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: .5,
                                style: BorderStyle.solid,
                              ))),
                      child: Row(
                        children: <Widget>[Text('列表ddddddddd')],
                      ),
                    ),
                  ],
                ),
              ),
//                  child:  ListView.builder(
//                      itemCount: 20,
//                      shrinkWrap: true,
//                      physics: new NeverScrollableScrollPhysics(),
//                      itemBuilder: (context, index) {
//                        return ListTile(
//                          leading: Container(
//                            color: Colors.redAccent,
//                            width: 50,
//                            height: 50,
//                          ),
//                          title: new Text('标题 ${index + 1} '),
//                          trailing: new Icon(Icons.keyboard_arrow_right),
//                        );
//                      }),
            ),
            ListView(
              children: [
                ListView.builder(
                    itemCount: 20,
                    shrinkWrap: true,
                    physics: new NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          color: Colors.redAccent,
                          width: 50,
                          height: 50,
                        ),
                        title: new Text('标题 ${index + 1} '),
                        trailing: new Icon(Icons.keyboard_arrow_right),
                      );
                    })
              ],
            ),

          ],
        ),
    );
  }

  Widget get _appBar {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              //AppBar渐变遮罩背景
              colors: [Color(0x66000000), Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
              padding: EdgeInsets.fromLTRB(14, 20, 0, 0),
              height: 86.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(
                      (appBarAlpha * 255).toInt(), 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: appBarAlpha == 1.0
                          ? Colors.black12
                          : Colors.transparent,
                      offset: Offset(2, 3),
                      blurRadius: 6,
                      spreadRadius: 0.6,
                    ),
                  ]),
              child: Text('12')),
        ),
        Container(
            height: appBarAlpha > 0.2 ? 0.5 : 0,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 0.5)]))
      ],
    );
  }
}
