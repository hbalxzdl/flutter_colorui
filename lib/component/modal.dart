import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ShowDialog extends StatefulWidget {
  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<ShowDialog> {
  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          key: _scaffoldKey,
//          appBar: AppBar(
//            leading: IconButton(
//              icon: Icon(
//                Icons.keyboard_arrow_left,
//                color: Colors.black,
//                size: 30,
//              ),
//              onPressed: () {
//                Navigator.pop(context);
//              },
//            ),
//            elevation: 1,
//            title: Text(
//              '弹窗',
//              style: TextStyle(
//                  color: new Color(0xFF333333), fontWeight: FontWeight.w600),
//            ),
//            backgroundColor: Colors.white,
//            centerTitle: true,
//          ),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(56),
              //用SafeArea，会把顶部的statusBar区域留出空白
              child: new SafeArea(
                child: SizedBox(
                  height: 56,
                  child: Container(
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child:  Text(
                        '自定义弹窗头部',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              )),
          body: Container(
            child: ListView(
              children: <Widget>[
                //  普通窗口
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return new Dialog(
                            child: Container(
                              height: 150,
                              child: Container(
                                alignment: Alignment.center,
                                child: Text('可以自定义样式'),
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    margin: EdgeInsets.only(left: 24.0, right: 24, top: 24.0),
                    child: Text('普通窗口'),
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, .1),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                //  底部窗口
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.white,
                        isScrollControlled: false,//是否可以点击背景关闭
                        builder: (BuildContext context) {
                          return new Container(
                            height: 200.0,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('我是底部滑出的 弹窗'),
                            ),
                          );
                        });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    margin: EdgeInsets.only(left: 24.0, right: 24, top: 24.0),
                    child: Text('底部弹窗'),
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, .1),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                //  IOS底部窗口
                GestureDetector(
                  onTap: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (BuildContext context) {
                          return new CupertinoActionSheet(
                            title: Text('提示'),
                            message: Text('是否要删除当前项？'),
                            actions: <Widget>[
                              CupertinoActionSheetAction(
                                child: Text('删除'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                isDefaultAction: true,
                              ),
                              CupertinoActionSheetAction(
                                child: Text('暂时不删'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                isDestructiveAction: true,
                              ),
                            ],
                          );
                        });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    margin: EdgeInsets.only(left: 24.0, right: 24, top: 24.0),
                    child: Text('IOS底部弹窗'),
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, .1),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),

                //  对话窗口
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return new AlertDialog(
                            title: Text("提示信息"),
                            content: Text("您确定要删除吗?"),
                            actions: <Widget>[
                              FlatButton(
                                  child: Text("取消"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }),
                              FlatButton(
                                  child: Text("确认"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  })
                            ],
                          );
                        });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    margin: EdgeInsets.only(left: 24.0, right: 24, top: 24.0),
                    child: Text('对话窗口'),
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, .1),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                // ios风格对话窗口
                GestureDetector(
                  onTap: () {
                    showCupertinoDialog( context: context, builder: (context){
                      return CupertinoAlertDialog(
                        title: Text('提示'),
                        content: Text('确认删除吗？'),
                        actions: <Widget>[
                          CupertinoDialogAction(child: Text('取消'),onPressed: (){
                            Navigator.of(context).pop();
                          },),
                          CupertinoDialogAction(child: Text('确认'),onPressed: (){
                            Navigator.of(context).pop();
                          },),
                        ],
                      );
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    margin: EdgeInsets.only(left: 24.0, right: 24, top: 24.0),
                    child: Text('IOS风格对话窗口'),
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, .1),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                //  抽屉
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    margin: EdgeInsets.only(left: 24.0, right: 24, top: 24.0),
                    child: Text('抽屉'),
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, .1),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                )
              ],
            ),
          ),
          // drawer 左边显示抽屉控件，endDrawer  右边显示抽屉控件
          drawer: DrawerWidget(),
          endDrawer: DrawerWidget()),
    );
  }
}

// Drawer 控件内容
class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      elevation: 20.0,
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'RedKeyset',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('redkeyset@gmail.com'),
            //定义用户头像，CircleAvatar 指定成圆形
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://dwz.cn/YfHol40M'),
            ),
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent, //区域背景颜色
                image: DecorationImage(
                    image: NetworkImage('https://dwz.cn/N00Lpoj0'),
                    fit: BoxFit.cover,
                    // ColorFilter 颜色滤镜  BlendMode混合模式
                    colorFilter: ColorFilter.mode(
                        Colors.blue[300].withOpacity(0.2), BlendMode.srcOver))),
          ),
          ListTile(
            leading:
                Icon(Icons.access_alarm, color: Colors.blueAccent, size: 18.0),
            onTap: () {
              Navigator.pop(context);
            },
            title: Text('新闻', textAlign: TextAlign.left), //TextAlign.left 文字左对齐
          )
        ],
      ),
    );
  }
}
