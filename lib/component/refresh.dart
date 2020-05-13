import 'package:flutter/material.dart';

class Refresh extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Refresh> {
  var _items = new List<String>();
  var _currentPage = 0;
  var _MaxPage = 3;

  
  ScrollController _scrollController = ScrollController(); //listview的控制器

  @override
  void initState() {
    super.initState();
    getData();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if(_currentPage < _MaxPage){
          _retrieveData();
        }
      }
    });



  }

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
            '上拉刷新/下拉加载',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),

        body: new RefreshIndicator(
            onRefresh: _onRefresh,
            child: ListView.builder(
                controller: _scrollController,
                itemCount: _items.length+1,
                shrinkWrap: true,
                physics: new BouncingScrollPhysics(),
                itemBuilder: _renderRow))
    );
  }

  Widget _renderRow(BuildContext context, int index) {
    //判断是否构建到了最后一条item
    if(index == _items.length){
      //判断是不是最后一页
      if(_currentPage < _MaxPage){
        //不是最后一页，返回一个loading窗
        return  new Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: SizedBox(
            width: 24.0,
            height: 24.0,
            child: CircularProgressIndicator(strokeWidth: 2.0,),
          ),
        );
      }else{
        return new Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: new Text('没有更多数据!!!',style:TextStyle(color: Colors.blue),),
        );
      }
    }else{
      return ListTile(
        leading: Container(
          color: Colors.redAccent,
          width: 50,
          height: 50,
        ),
        title: new Text('${_items[index]} '),
        trailing: new Icon(Icons.keyboard_arrow_right),
      );
    }

  }

  void getData() {
//    初始数据源
    for (int i = 0; i < 20; i++) {
      _items.insert(i, "第${_items.length}条原始数据");
    }
  }

  Future<void> _onRefresh() async {
    setState(() {
      _items.clear();
      for (int i = 0; i < 20; i++) {
        _items.insert(_items.length, "第${_items.length}条下拉刷新后的数据");
      }
    });
  }

  void _retrieveData() {
    //上拉加载新的数据
    _currentPage++;
    Future.delayed(Duration(seconds: 2)).then((e){
      for (int i=0;i<20;i++){
        _items.insert(_items.length, "这是新加载的第${_items.length}条数据");
      }
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }
}
