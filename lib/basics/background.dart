import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
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

  List colorLight  = [
    {"title": "嫣红", "name": "red", "color": "0xfffadbd9"},
    {"title": "桔橙", "name": "orange", "color": "0xfffde6d2"},
    {"title": "明黄", "name": "yellow", "color": "0xfffef2ced2"},
    {"title": "橄榄", "name": "olive", "color": "0xffe8f4d9"},
    {"title": "森绿", "name": "green", "color": "0xffd7f0dbff"},
    {"title": "天青", "name": "cyan", "color": "0xffd2f1f0"},
    {"title": "海蓝", "name": "blue", "color": "0xffcce6ff"},
    {"title": "姹紫", "name": "purple", "color": "0xffe1d7f0"},
    {"title": "木槿", "name": "mauve", "color": "0xffebd4ef"},
    {"title": "桃粉", "name": "pink", "color": "0xfff9d7ea"},
    {"title": "棕褐", "name": "brown", "color": "0xffede1d9"},
    {"title": "玄灰", "name": "grey", "color": "0xffe7ebed"},
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
            '背景',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xffF7F7F9),
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              new Container(

                child: new Column(
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
                        children: <Widget>[Text('深色背景')],
                      ),
                    ),
                    new Container(
                      color: Color(0xfff1f1f1),
                      padding: const EdgeInsets.all(10),
                      child: GridView.builder(
                        shrinkWrap:true,
                        physics: new NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:3, //横轴元素个数
                            childAspectRatio: 10 / 8, //子组件宽高长度比例
                            mainAxisSpacing: 10.0,//纵轴间距
                            crossAxisSpacing:10.0,//横轴间距
                        ),
                        itemCount: colorList.length,
                         itemBuilder: (context, index){
                              return  Container(

                                decoration: new BoxDecoration(
                                  color: Color(int.parse(colorList[index]['color'])),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                       new Text(colorList[index]['title'],
//                                       style: TextStyle(color: Color(0xff333)),
                                       ),
                                       new Text(colorList[index]['name'],
//                                         style: TextStyle(color: Color(0xff333)),
                                       ),
                                     ],
                                   ),
                              );
                         }
                      ),
                    ),

                  ],
                ),
              ),
              new Container(

                child: new Column(
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
                        children: <Widget>[Text('浅色背景')],
                      ),
                    ),
                    new Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: GridView.builder(
                          shrinkWrap:true,
                          physics: new NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:3, //横轴元素个数
                            childAspectRatio: 10 / 8, //子组件宽高长度比例
                            mainAxisSpacing: 10.0,//纵轴间距
                            crossAxisSpacing:10.0,//横轴间距
                          ),
                          itemCount: colorLight.length,
                          itemBuilder: (context, index){
                            return  Container(

                              decoration: new BoxDecoration(
                                color: Color(int.parse(colorLight[index]['color'])),
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text(colorList[index]['title'],
//                                       style: TextStyle(color: Color(0xff333)),
                                  ),
                                  new Text(colorList[index]['name'],
//                                         style: TextStyle(color: Color(0xff333)),
                                  ),
                                ],
                              ),
                            );
                          }
                      ),
                    ),

                  ],
                ),
              ),
              new Container(

                child: new Column(
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
                        children: <Widget>[Text('渐进背景')],
                      ),
                    ),
                    new Container(
                      color: Color(0xfff1f1f1),
                      padding: const EdgeInsets.all(10),
                      child: GridView.count(
                          shrinkWrap:true,
                          physics: new NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                        childAspectRatio: 2 / 1, //子组件宽高长度比例
                        mainAxisSpacing: 10.0,//纵轴间距
                        crossAxisSpacing:10.0,//横轴间距
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xfff43f3b), Color(0xffec008c)],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                    ),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text('魅红',
                                       style: TextStyle(color: Colors.white),
                                  ),
                                  new Text('0xfff43f3b - 0xffec008c',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xffff9700), Color(0xffed1c24)],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                    ),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text('鎏金',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  new Text('0xffff9700 - 0xffed1c24',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xff39b54a), Color(0xff8dc63f)],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                    )
                                ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text('翠柳',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  new Text('0xff39b54a - 0xff8dc63f',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xff0081ff), Color(0xff1cbbb4)],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text('靛青',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  new Text('0xff0081ff - 0xff1cbbb4',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xff9000ff), Color(0xff5e00ff)],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text('惑紫',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  new Text('0xff9000ff - 0xff5e00ff',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xffec008c), Color(0xff6739b6)],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text('霞彩',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  new Text('0xffec008c - 0xff6739b6',
                                    style: TextStyle(color: Colors.white),
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
              new Container(

                child: new Column(
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
                        children: <Widget>[Text('背景图片')],
                      ),
                    ),
                    new Container(
                      height: 200,
                      width:double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: new NetworkImage("https://ossweb-img.qq.com/images/lol/web201310/skin/big10006.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                     child: Container(
                       padding: const EdgeInsets.all(10),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           new Text('钢铁之翼',
                             style: TextStyle(color: Colors.white,
                              fontSize: 22,fontWeight:FontWeight.w700,
                             ),
                           ),
                           new Text('Only the guilty need fear me.',
                             style: TextStyle(color: Colors.white),
                           ),
                         ],
                       ),
                     ),

                    ),

                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
