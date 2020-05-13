import 'package:flutter/material.dart';

class ListLayOut extends StatefulWidget {
  @override
  _ListLayOutState createState() => _ListLayOutState();
}

class _ListLayOutState extends State<ListLayOut> {
  List dataList = [];

//  List<bool> dataList = List.generate(20, (index) => false).toList();

  var _crossFadeState = CrossFadeState.showSecond;

  bool isShow=true;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 20; i++) {
      dataList.insert(i, {'title': '菜单${i}', 'isShow': false});
    }
    print(dataList);
  }

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
            '列表',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              new Container(
                child: ListView(
                  shrinkWrap: true,
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
                        children: <Widget>[Text('列表')],
                      ),
                    ),
                    ListView.builder(
                        itemCount: 10,
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
                        }),

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
                        children: <Widget>[Text('折叠面板')],
                      ),
                    ),
                    new Column(
                      children: <Widget>[
                        new GestureDetector(
                          child: ListTile(
                            title: new Text('点击折叠'),
                            trailing: new Icon(Icons.keyboard_arrow_right),
                          ),
                          onTap: (){
                            setState(() {
                              isShow=!isShow;
                            });
                          },
                        ),

                        new AnimatedCrossFade(
                            duration: Duration(milliseconds: 600),
                            firstChild: Container(),
                            secondChild: Container(
                              height: 150,
                              color: Colors.blue,
                            ),
                            crossFadeState: isShow?CrossFadeState.showFirst:CrossFadeState.showSecond
                        ),
                      ],
                    ),

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
                        children: <Widget>[Text('二级菜单')],
                      ),
                    ),
                    ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: new NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ExpansionTile(
                            title: Text('父菜单${index + 1}'),
                            backgroundColor: Theme.of(context)
                                .accentColor
                                .withOpacity(0.025),
                            children: [1, 2, 3]
                                .map((int i) => ListTile(
                                      key: Key('${i}'),
                                      title: Text('子菜单${i}'),
                                    ))
                                .toList(),
                          );
                        }),

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
