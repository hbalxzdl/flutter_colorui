import 'package:flutter/material.dart';
import './bar.dart';
import './nav.dart';
import './toast.dart';
import './left_scroll.dart';
import './refresh.dart';
import './timeLine.dart';
import './swiper.dart';
import './modal.dart';
import './steps.dart';

class Component extends StatefulWidget {
  @override
  _ComponentState createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '基础组件',style: TextStyle(
              color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 25.0,top: 25.0),
                width: double.infinity,
                child: new Wrap(
                  runSpacing: 12.0,
                  spacing: 12.0,
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    //操作条
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => Bar()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff1cbbb4),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '操作条',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //导航栏
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => Nav()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff0081ff),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '导航栏',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //列表
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => ToastList()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff6739b6),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '消息提示框',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //卡片
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => Left_scroll()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff9c26b0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '滑动删除',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),

                    //表单
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => Refresh()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xffe03997),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '上拉刷新',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //时间轴
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => TimeLine()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xffa5673f),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '头部展开/折叠',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //轮播图
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Swipers()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xffe54d42),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '轮播图',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //模态框
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => ShowDialog()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xfff37b1d),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '模态框',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    //步骤条
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => Steps()));
                      },
                      child: new Container(
                        width: 150,
                        height: 90,
                        decoration: new BoxDecoration(
                          color: Color(0xff8dc63f),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: new Text(
                          '步骤条',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    new Container(
                      width: 150,
                      height: 90,
                      decoration: new BoxDecoration(
                        color: Color(0xff39b54a),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: new Text(
                        '加载',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
