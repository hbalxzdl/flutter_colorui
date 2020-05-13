import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastList extends StatefulWidget {
  @override
  _ToastListState createState() => _ToastListState();
}


class _ToastListState extends State<ToastList> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: scaffoldKey,
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
            '消息提示框',
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
                  Fluttertoast.showToast(
                      msg: "一般提示",
                      toastLength: Toast.LENGTH_LONG  ,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1
                      ,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  margin: EdgeInsets.only(left: 24.0, right: 24,top: 24.0),
                  child: Text('一般提示'),
                  decoration: new BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, .1),
                      borderRadius:BorderRadius.circular(20.0)
                  ),
                ),
              ),
              //固定底部提示
              GestureDetector(
                onTap: (){
                  scaffoldKey.currentState.showSnackBar(new SnackBar(
                    content: Row(
                      children: <Widget>[
                        Icon(Icons.check,color: Colors.green,),
                        Text('下载成功')],
                    ),
                    duration: Duration(seconds: 2),
                  ));

                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  margin: EdgeInsets.only(left: 24.0, right: 24,top: 24.0),
                  child: Text('固定底部提示'),
                  decoration: new BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, .1),
                      borderRadius:BorderRadius.circular(20.0)
                  ),
                ),
              ),
              //浮动底部提示
              GestureDetector(
                onTap: (){
                  scaffoldKey.currentState.showSnackBar(new SnackBar(
                    content: Row(
                      children: <Widget>[
                        Icon(Icons.check,color: Colors.green,),
                        Text('下载成功')],
                    ),
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 2),
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  margin: EdgeInsets.only(left: 24.0, right: 24,top: 24.0),
                  child: Text('固定底部提示'),
                  decoration: new BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, .1),
                      borderRadius:BorderRadius.circular(20.0)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




