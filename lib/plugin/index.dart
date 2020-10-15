import 'package:flutter/material.dart';
import 'package:flutter_colorui/examples/button/button.dart';
import 'package:flutter_colorui/utils/Icons.dart';
import 'package:flutter_colorui/utils/Colors.dart';

class Plugin extends StatefulWidget {
  @override
  _PluginState createState() => _PluginState();
}

class _PluginState extends State<Plugin> {
  @override
  void initState() {
    // TODO: implement initState
    // super.initState();
    // print(Theme.of(context).);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            '基础组件',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: new ListView(
          children: [
            DefulterText(text: '按钮类型'),
            new Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Button(
                        text: Text('默认类型'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            DefulterText(text: '禁用状态'),
            new Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Button(
                        text: Text('禁用状态',style: TextStyle(color: ColorsUtil().white),),
                        color: 0xff07c160,
                        disabled: true,
                        // plain: false,

                      ),
                    ],
                  ),
                ],
              ),
            ),

            DefulterText(text: '加载状态'),
            new Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Button(
                        text: Text('加载状态',style: TextStyle(color: ColorsUtil().white)),
                        color: 0xff07c160,
                        loading: true,
                        plain: false,
                      ),
                      new Button(
                        color: 0xff07c160,
                        loading: true,
                        plain: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            DefulterText(text: '按钮尺寸'),
            new Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Button(
                        text: Text('大号按钮',style: TextStyle(color: ColorsUtil().white)),
                        color: 0xff07c160,
                        plain: false,
                        height: 60,
                      ),
                      new Button(
                        text: Text('普通按钮',style: TextStyle(color: ColorsUtil().white)),
                        color: 0xff07c160,
                        plain: false,
                        height: 40,
                      ),
                      new Button(
                        text: Text('迷你按钮',style: TextStyle(color: ColorsUtil().white)),
                        color: 0xff07c160,
                        plain: false,
                        height: 25,
                      ),

                    ],
                  ),
                ],
              ),
            ),

            DefulterText(text: '块级按钮'),
            new Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Button(
                        text: Text('大号按钮',style: TextStyle(color: ColorsUtil().white)),
                        color: 0xff07c160,
                        plain: false,
                        height: 60,
                        // block: true,
                      ),


                    ],
                  ),
                ],
              ),
            ),

            DefulterText(text: '按钮形状'),
            new Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Button(
                        text: Text('方型按钮',style: TextStyle(color: ColorsUtil().white)),
                        color: 0xff07c160,
                        plain: false,
                      ),
                      new Button(
                        text: Text('圆型按钮',style: TextStyle(color: ColorsUtil().white)),
                        color: 0xff07c160,
                        round: true,
                        plain: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),


            DefulterText(text: '自定义颜色'),
            new Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Button(
                        text: Text('单色按钮',style: TextStyle(color: ColorsUtil().white)),
                        color: 0xff7232dd,
                        plain: false,
                      ),

                      new Button(
                        text: Text('单色按钮',style: TextStyle(color: Color(0xff7232dd))),
                        color: 0xff7232dd,
                        plain: true,
                      ),

                    ],
                  ),
                ],
              ),
            ),
            // FlatButton(
            //   child: Text(
            //     '圆角',
            //     style: TextStyle(fontSize: 14),
            //   ),
            //   color: Color(0xfff0f0f0),
            //   onPressed: () {},
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(20))),
            // ),
          ],
        ),
      ),
    );
  }
}

class DefulterText extends StatelessWidget {
  DefulterText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 40,
      padding: EdgeInsets.only(left: 24.0, right: 24),
      margin: EdgeInsets.only(top: 15.0),
      decoration: new BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
            color: Color.fromRGBO(0, 0, 0, .1),
            width: 1,
            style: BorderStyle.solid,
          ))),
      child: Row(
        children: <Widget>[Text(text)],
      ),
    );
  }
}
