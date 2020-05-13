import 'package:flutter/material.dart';

class LoadingList extends StatefulWidget {
  @override
  _LoadingListState createState() => _LoadingListState();
}

class _LoadingListState extends State<LoadingList> {
  @override

  bool isShow=false;


  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
          title: Text(
            '加载 ',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            shrinkWrap:true,
            physics: new NeverScrollableScrollPhysics(),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('弹窗加载'),
                    new Container(
                      height: 30,
                      width: 60,
                      child: FlatButton(
                        child: Text('点我 '),
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                            setState(() {
                              isShow=!isShow;
                            });
                        },
                      ),
                    )
                  ],
                ),
              ),
          isShow?
              new Center(
                child: new Material(
                  color: Colors.transparent,
                  child: new Container(
                    width: 120.0,
                    height: 120.0,
                      child: new Container(
                          decoration: ShapeDecoration(
                              color: Color(0xffffffff),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                          ),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new CircularProgressIndicator(),
                            new Padding(
                              padding: const EdgeInsets.only(
                                top: 20.0,
                              ),
                              child: new Text(
                                "加载中",
                                style: new TextStyle(fontSize: 16.0),
                              ),
                            ),

                         ],
                        ),

                      )
                  ),
                ),
              ):Text('')
            ],
          ),
        ),
      ),
    );
  }
}
