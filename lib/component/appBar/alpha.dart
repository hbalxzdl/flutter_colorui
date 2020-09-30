import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/services.dart';

class Alpha extends StatefulWidget {
  @override
  _AlphaState createState() => _AlphaState();
}

const APPBAR_SCROLL_OFFSET = 100;
class _AlphaState extends State<Alpha> {
  double appBarAlpha = 0;


  void initState() {
    // TODO: implement initState
    super.initState();

  }

  List bannerList=[
  {
  "icon": "https://dimg04.c-ctrip.com/images/zg041h000001hoqla603F.jpg",
  "sIcon": "https://cdn.lishaoy.net/ctrip/banner1.jpg",
  "url": "https://m.ctrip.com/webapp/you/gspoi/sight/0/5356386.html?seo=0"
  },
  {
  "icon": "https://dimg04.c-ctrip.com/images/zg0l1g000001hg8q2E0D1.jpg",
  "sIcon": "https://cdn.lishaoy.net/ctrip/banner2.jpg",
  "url": "https://m.ctrip.com/tangram/NjQ2MQ==?ctm_ref=vactang_page_6461&isHideNavBar=YES"
  },
  {
  "icon": "https://dimg04.c-ctrip.com/images/zg0i1g000001h9oh9009F.jpg",
  "sIcon": "https://cdn.lishaoy.net/ctrip/banner3.jpg",
  "url": "https://contents.ctrip.com/activitysetupapp/mkt/index/clwyky?ctm_ref=vdc_ctm_3642"
  },
  {
  "icon": "https://dimg04.c-ctrip.com/images/zg0a1h000001hr5gy3D2D.jpg",
  "sIcon": "https://cdn.lishaoy.net/ctrip/banner4.jpg",
  "url": "https://m.ctrip.com/tangram/NjM0Ng==?ctm_ref=vactang_page_6346&isHideNavBar=YES"
  },
  {
  "icon": "https://dimg04.c-ctrip.com/images/zg0p1h000001hlzdt606F.jpg",
  "sIcon": "https://cdn.lishaoy.net/ctrip/banner5.jpg",
  "url": "https://m.ctrip.com/webapp/you/gspoi/sight/0/50102.html?seo=0"
  },
  {
  "icon": "https://dimg04.c-ctrip.com/images/zg0c1h000001hrqn4997E.jpg",
  "sIcon": "https://cdn.lishaoy.net/ctrip/banner6.jpg",
  "url": "https://m.ctrip.com/tangram/NjU3Ng==?ctm_ref=vactang_page_6576&isHideNavBar=YES"
  }
  ];

  ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: [
          MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: Scrollbar(
              child: NotificationListener(
                onNotification: (ScrollNotification notification) {
                  if (notification is ScrollStartNotification) {
                    print('滚动开始');
                  }
                  if(notification is ScrollUpdateNotification&&notification.depth == 0){
                    print('滚动中');
                    _onScroll(notification.metrics.pixels);
                    // print(notification.metrics.pixels);
                    // print(MediaQuery.of(context).padding.top+40.0);
                  }
                  return true;
                  // if (notification is ScrollEndNotification) {
                  //   print('停止滚动');
                  //   if (_scrollController.position.extentAfter == 0) {
                  //     print('滚动到底部');
                  //   }
                  //   if (_scrollController.position.extentBefore == 0) {
                  //     print('滚动到头部');
                  //   }
                  // }

                  // double progress = notification.metrics.pixels /
                  //     notification.metrics.maxScrollExtent;
                  // print(progress*100);
                  // return false;

                },
                child:  ListView(
                  children: [
                    Container(
                      height: 200,
                      child: new Swiper(
                        itemBuilder: (BuildContext context,int index){
                          return new Image.network(bannerList[index]['icon'],fit: BoxFit.fill,);
                        },
                        itemCount: bannerList.length,
                        pagination: new SwiperPagination(),
                      ),
                    ),
                    ListView.builder(
                        itemCount: 20,
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
                        })
                  ],
                ),


              ),
            ),
          ),

          Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.fromLTRB(),
                  margin: EdgeInsets.only(top:MediaQuery.of(context).padding.top),
                  decoration: new BoxDecoration(
                      color:  Color.fromARGB((appBarAlpha * 255).toInt(), 4, 255, 255),
                      border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, .1),
                            width: .5,
                            style: BorderStyle.solid,
                          ))),
                  child: Text('搜索')
          ),

        ],
      ),
    );
  }

  void _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print(alpha);
  }
}
