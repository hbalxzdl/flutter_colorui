import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  @override
  _TextState createState() => _TextState();
}

class _TextState extends State<TextPage> {
  List colorList = [
    {"title": "嫣红", "name": "red", "color": "0xffe54d42"},
    {"title": "桔橙", "name": "orange", "color": "0xfff37b1d"},
    {"title": "明黄", "name": "yellow", "color": "0xfffbbd08"},
    {"title": "橄榄", "name": "olive", "color": "0xff8dc63f"},
    {"title": "森绿", "name": "green", "color": "0xff39b54a"},
    {"title": "天青", "name": "cyan", "color": "0xff1cbbb4"},
    {"title": "海蓝", "name": "blue", "color": "0xff0081ff"},
    {"title": "姹紫", "name": "purple", "color": "0xff6739b6"},
    {"title": "木槿", "name": "mauve", "color": "0xff9c26b0"},
    {"title": "桃粉", "name": "pink", "color": "0xffe03997"},
    {"title": "棕褐", "name": "brown", "color": "0xffa5673f"},
    {"title": "玄灰", "name": "grey", "color": "0xff8799a3"},
    {"title": "草灰", "name": "gray", "color": "0xffaaaaaa"},
    {"title": "墨黑", "name": "black", "color": "0xff333333"},
    {"title": "雅白", "name": "white", "color": "0xffffffff"}
  ];

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
            '文本',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Container(
                  color: Color(0xfff1f1f1),
                  child: new Column(
                    children: <Widget>[
                      // 文字大小
                      new Container(
                        color: Colors.white,
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
                                children: <Widget>[Text('文字大小')],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.all(5),
                              decoration: new BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: 2.0,
                                style: BorderStyle.solid,
                              ))),
                              child: Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        child: Text('60'),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                width: double.infinity,
                                                decoration: new BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, .1),
                                                  width: .5,
                                                  style: BorderStyle.solid,
                                                ))),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Icon(
                                                  Icons.check_circle,
                                                  color: Color(0xff39b54a),
                                                  size: 60,
                                                ),
//                                           child:
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Text('用于图标、数字等特大显示'),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.all(5),
                              decoration: new BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: 2.0,
                                style: BorderStyle.solid,
                              ))),
                              child: Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        child: Text(
                                          '40',
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                width: double.infinity,
                                                decoration: new BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, .1),
                                                  width: .5,
                                                  style: BorderStyle.solid,
                                                ))),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Icon(
                                                  Icons.check_circle,
                                                  color: Color(0xff39b54a),
                                                  size: 40,
                                                ),
//                                           child:
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Text('用于图标、数字等特大显示'),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.all(5),
                              decoration: new BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: 2.0,
                                style: BorderStyle.solid,
                              ))),
                              child: Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        child: Text(
                                          '22',
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  width: double.infinity,
                                                  alignment: Alignment.center,
                                                  decoration: new BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .1),
                                                    width: .5,
                                                    style: BorderStyle.solid,
                                                  ))),
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Text(
                                                    '88.00',
                                                    style: TextStyle(
                                                      color: Color(0xffe54d42),
                                                      fontSize: 22,
                                                    ),
                                                  )
//                                           child:
                                                  ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Text('用于金额数字等信息'),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.all(5),
                              decoration: new BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: 2.0,
                                style: BorderStyle.solid,
                              ))),
                              child: Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        child: Text(
                                          '18',
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  width: double.infinity,
                                                  alignment: Alignment.center,
                                                  decoration: new BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .1),
                                                    width: .5,
                                                    style: BorderStyle.solid,
                                                  ))),
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Text(
                                                    '您的订单已提交成功',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 18,
                                                    ),
                                                  )
//                                           child:
                                                  ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Text('用于金额数字等信息'),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.all(5),
                              decoration: new BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: 2.0,
                                style: BorderStyle.solid,
                              ))),
                              child: Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        child: Text(
                                          '16',
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  width: double.infinity,
                                                  alignment: Alignment.center,
                                                  decoration: new BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .1),
                                                    width: .5,
                                                    style: BorderStyle.solid,
                                                  ))),
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Text(
                                                    'ColorUI组件库',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  )
//                                           child:
                                                  ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Text('页面小标题，首要层级显示内容'),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.all(5),
                              decoration: new BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: 2.0,
                                style: BorderStyle.solid,
                              ))),
                              child: Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        child: Text(
                                          '14',
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  width: double.infinity,
                                                  alignment: Alignment.center,
                                                  decoration: new BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .1),
                                                    width: .5,
                                                    style: BorderStyle.solid,
                                                  ))),
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Text(
                                                    '专注视觉的小程序组件库',
//                                              style: TextStyle(fontSize: 16,),
                                                  )
//                                           child:
                                                  ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Text('页面默认字号，用于摘要或阅读文本'),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.all(5),
                              decoration: new BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: 2.0,
                                style: BorderStyle.solid,
                              ))),
                              child: Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        child: Text(
                                          '12',
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  width: double.infinity,
                                                  alignment: Alignment.center,
                                                  decoration: new BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .1),
                                                    width: .5,
                                                    style: BorderStyle.solid,
                                                  ))),
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Text(
                                                    '衬衫的价格是9磅15便士',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  )),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Text('页面辅助信息，次级内容等'),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        child: Text(
                                          '10',
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  width: double.infinity,
                                                  alignment: Alignment.center,
                                                  decoration: new BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .1),
                                                    width: .5,
                                                    style: BorderStyle.solid,
                                                  ))),
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Text(
                                                    '我于杀戮之中绽放 亦如黎明中的花朵',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  )
//                                           child:
                                                  ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child:
                                                    Text('说明文本，标签文字等关注度低的文字'),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // 文字颜色
                      new Container(
                        margin: EdgeInsets.only(top: 15.0),
                        color: Colors.white,
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
                                children: <Widget>[Text('文字颜色')],
                              ),
                            ),
                            new Container(
                              color: Color(0xfff1f1f1),
                              padding: const EdgeInsets.all(10),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: new NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 6, //横轴元素个数
                                    childAspectRatio: 10 / 8, //子组件宽高长度比例
                                    mainAxisSpacing: 10.0, //纵轴间距
                                    crossAxisSpacing: 10.0, //横轴间距
                                  ),
                                  itemCount: colorList.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          new Text(
                                            colorList[index]['title'],
                                            style: TextStyle(
                                                color: Color(int.parse(
                                                    colorList[index]
                                                        ['color']))),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      // 文字阴影
                      new Container(
                        margin: EdgeInsets.only(top: 15.0),
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
                                children: <Widget>[Text('文字阴影')],
                              ),
                            ),
                            new Container(
                              color: Color(0xfff1f1f1),
                              padding: const EdgeInsets.all(10),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: new NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 6, //横轴元素个数
                                    childAspectRatio: 10 / 8, //子组件宽高长度比例
                                    mainAxisSpacing: 10.0, //纵轴间距
                                    crossAxisSpacing: 10.0, //横轴间距
                                  ),
                                  itemCount: colorList.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: new BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(int.parse(
                                                  colorList[index]['color'])),
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 1.0,
                                              spreadRadius: 1.0)
                                        ],
                                        color: Color(int.parse(
                                            colorList[index]['color'])),
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      margin: EdgeInsets.all(10),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      // 文字对齐
                      new Container(
                        margin: EdgeInsets.only(top: 15.0),
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
                                children: <Widget>[Text('文字对齐')],
                              ),
                            ),
                            new Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  new Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.all(15),
                                      child: new Text(
                                        '我于杀戮之中绽放 ,亦如黎明中的花朵',
                                      )),
                                  new Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(15),
                                      child: new Text(
                                        '我于杀戮之中绽放 ,亦如黎明中的花朵',
                                      )),
                                  new Container(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.all(15),
                                      child: new Text(
                                        '我于杀戮之中绽放 ,亦如黎明中的花朵',
                                      ))
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
      ),
    );
  }
}
