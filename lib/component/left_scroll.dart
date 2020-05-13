import 'package:flutter/material.dart';
import 'package:left_scroll_actions/left_scroll_actions.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Left_scroll extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Left_scroll> {
  var items = new List();


  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          '滑动删除',
          style: TextStyle(
              color: new Color(0xFF333333), fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 40,
            padding: EdgeInsets.only(left: 24.0, right: 24),
            decoration: new BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, .1),
                  width: 1,
                  style: BorderStyle.solid,
                ))),
            child: Row(
              children: <Widget>[Text('列表左滑')],
            ),
          ),
          ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              physics: new NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {

                return Container(
                  child:  CupertinoLeftScroll(
                    // important, each Row must have different key.
                    key: Key('${index}'),
                    closeTag: LeftScrollCloseTag('${index}'),
                    buttonWidth: 80,
                    child: ListTile(
                      leading: Container(
                        color: Colors.redAccent,
                        width: 50,
                        height: 50,
                      ),
                      subtitle: new Text('今天上课吗'),
                      title: new Text('石章鱼${index} '),
                      trailing: new Text("9:00"),
                    ),
                    buttons: <Widget>[
                      LeftScrollItem(
                        text: '删除',
                        color: Colors.red,
                        onTap: () {
                          setState(() {
                            items[index]['show'] =false;
                            items.removeAt(index);

                          });
                        },
                      ),
                      LeftScrollItem(
                        text: '置顶',
                        color: Colors.black26,
                        onTap: () {
                          print(index);
                        },
                      ),
                    ],
                    onTap: () {
                      print('tap row');
                    },
                  ),
                );
              }),
          ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              physics: new NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  child: Dismissible(
                    key: Key('key${items[index]}'),
                    child: ListTile(
                      title: Text('${items[index]}'),
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                      Scaffold.of(context).showSnackBar(
                          new SnackBar(content: new Text("已经删除第${index}")));
                    },
                    background: new Container(
                      color: Colors.red,
                    ),
                  ),
                );
              }),

        ],
      ),
    );
  }

  void getData() {
//    初始数据源
    for (int i = 0; i < 5; i++) {
      items.insert(i, {'show': true,'title':"第${i}条原始数据"});
    }
  }


}
