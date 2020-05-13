import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FormsList extends StatefulWidget {
  @override
  _FormsListState createState() => _FormsListState();
}

class _FormsListState extends State<FormsList> {
  bool check=false;
  int groupValue=0;

  @override
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
            '表单',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: new Container(
            child: new ListView(
                children: <Widget>[
                  new Container(
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
                            children: <Widget>[Text('一般表单')],
                          ),
                        ),
                        new Container(
                          child: new Form(
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      border: Border(
                                          bottom: BorderSide(
                                            color: Color.fromRGBO(0, 0, 0, .2),
                                            width: .5,
                                            style: BorderStyle.solid,
                                   ))),
                                  child:  new Row(
                                    children: <Widget>[
                                      new Container(
                                          width:70,
                                          margin: const EdgeInsets.only(right: 8.0),
                                          child: Text('邮件')
                                      ),
                                      new Expanded(
                                        child:  new TextField(
                                          decoration: new InputDecoration(
                                            hintText: '请输入邮件地址',
                                            border:InputBorder.none,
                                            hintStyle:new TextStyle(
                                              color: Color(0xFF999999),
                                            ),
                                          ),
                                          obscureText: true,
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      border: Border(
                                          bottom: BorderSide(
                                            color: Color.fromRGBO(0, 0, 0, .2),
                                            width: .5,
                                            style: BorderStyle.solid,
                                          ))),
                                  child:  new Row(
                                    children: <Widget>[
                                      new Container(
                                        width:70,
                                          margin: const EdgeInsets.only(right: 8.0),
                                          child: Text('收货地址')
                                      ),
                                      new Expanded(
                                        child:  new TextField(
                                          decoration: new InputDecoration(
                                            hintText: '请输入收货地址',
                                            border:InputBorder.none,
                                            hintStyle:new TextStyle(
                                              color: Color(0xFF999999),
                                            ),
                                          ),
                                          obscureText: true,
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                  ),
                                  child:  new Row(
                                    children: <Widget>[
                                      new Container(
                                          width:70,
                                          margin: const EdgeInsets.only(right: 8.0),
                                          child: Text('验证码')
                                      ),
                                      new Expanded(
                                        child:  new TextField(
                                          decoration: new InputDecoration(
                                            hintText: '请输入验证码',
                                            border:InputBorder.none,
                                            hintStyle:new TextStyle(
                                              color: Color(0xFF999999),
                                            ),
                                          ),
                                          obscureText: true,
                                        ),
                                      ),
                                      FlatButton(
                                        child: Text('验证码'),
                                        color: Colors.blue,
                                        textColor: Colors.white,
                                        onPressed: () {},
                                      ),


                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        new Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 24.0, right: 24),
                          margin: EdgeInsets.only(top: 15),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: .5,
                                    style: BorderStyle.solid,
                                  ))),
                          child: Row(
                            children: <Widget>[Text('开关')],
                          ),
                        ),
                        new Container(
                          child: new ListView(
                            shrinkWrap: true,
                            physics: new NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              new Container(
                                padding: const EdgeInsets.only(left: 10.0),
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, .2),
                                          width: .5,
                                          style: BorderStyle.solid,
                                        ))),
                                child:  new Row(
                                  children: <Widget>[
                                    new Expanded(
                                    child: Text('开关选择')
                                    ),
                                    new Container(
                                      child:  new Switch(
                                          value: check,
                                          onChanged: (bool val){
                                            setState(() {
                                              check = !check;
                                            });
                                          })
                                    ),


                                  ],
                                ),
                              ),
                              new Container(
                                padding: const EdgeInsets.only(left: 10.0),
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, .2),
                                          width: .5,
                                          style: BorderStyle.solid,
                                        ))),
                                child:  new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: Text('定义颜色')
                                    ),
                                    new Container(
                                        child:  new Switch(
                                            value: check,
                                            inactiveThumbColor:Colors.white,
                                            activeColor:Colors.white,
                                            activeTrackColor:Colors.red,
                                            onChanged: (bool val){
                                              setState(() {
                                                check = !check;
                                              });
                                            })
                                    ),


                                  ],
                                ),
                              ),

                              new Container(
                                padding: const EdgeInsets.only(left: 10.0),
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, .2),
                                          width: .5,
                                          style: BorderStyle.solid,
                                        ))),
                                child:  new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: Text('IOS')
                                    ),
                                    new Container(
                                        child:  new CupertinoSwitch(
                                            value: check,
                                            onChanged: (bool val){
                                              setState(() {
                                                check = !check;
                                              });
                                            })
                                    ),


                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),

                        new Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 24.0, right: 24),
                          margin: EdgeInsets.only(top: 15),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: .5,
                                    style: BorderStyle.solid,
                                  ))),
                          child: Row(
                            children: <Widget>[Text('单选')],
                          ),
                        ),
                        new Container(
                          child: new ListView(
                            shrinkWrap: true,
                            physics: new NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              new Container(
                                padding: const EdgeInsets.only(left: 10.0),
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, .2),
                                          width: .5,
                                          style: BorderStyle.solid,
                                        ))),
                                child:  new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: Text('单选操作')
                                    ),
                                    new Container(
                                        child:new Radio(
                                          groupValue: groupValue,
                                          activeColor: Colors.blue,
                                          value: 0,
                                          onChanged: (int value) {
                                            setState(() {
                                              groupValue=value;
                                            });

                                          },
                                        )
                                    ),


                                  ],
                                ),
                              ),
                              new Container(
                                padding: const EdgeInsets.only(left: 10.0),
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, .2),
                                          width: .5,
                                          style: BorderStyle.solid,
                                        ))),
                                child:  new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: Text('定义颜色')
                                    ),
                                    new Container(
                                        child:new Radio(
                                          groupValue: groupValue,
                                          activeColor: Colors.red,
                                          value: 1,
                                          onChanged: (int value) {
                                            setState(() {
                                              groupValue=value;
                                            });

                                          },
                                        )
                                    ),


                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),

                        new Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 24.0, right: 24),
                          margin: EdgeInsets.only(top: 15),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: .5,
                                    style: BorderStyle.solid,
                                  ))),
                          child: Row(
                            children: <Widget>[Text('复选')],
                          ),
                        ),
                        new Container(
                          child: new ListView(
                            shrinkWrap: true,
                            physics: new NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              new Container(
                                padding: const EdgeInsets.only(left: 10.0),
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, .2),
                                          width: .5,
                                          style: BorderStyle.solid,
                                        ))),
                                child:  new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: Text('复选操作')
                                    ),
                                    new Container(
                                        child:new Checkbox(
                                          value:check,
                                          onChanged: (bool value) {
                                            setState(() {
                                              check=!check;
                                            });

                                          },
                                        )
                                    ),


                                  ],
                                ),
                              ),
                              new Container(
                                padding: const EdgeInsets.only(left: 10.0),
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, .2),
                                          width: .5,
                                          style: BorderStyle.solid,
                                        ))),
                                child:  new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: Text('定义颜色')
                                    ),
                                    new Container(
                                        child:new Checkbox(
                                          value:!check,
                                          activeColor: Colors.red,
                                          onChanged: (bool value) {
                                            setState(() {
                                              check=!check;
                                            });

                                          },
                                        )
                                    ),


                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
            ),
        ),
      ),
    );
  }
}
