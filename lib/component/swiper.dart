import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Swipers extends StatefulWidget {
  @override
  _SwipersState createState() => _SwipersState();
}

class _SwipersState extends State<Swipers> {
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
            '轮播图',
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
                height: 200.0,
                child: new Swiper(
                  itemBuilder: (BuildContext context,int index){
                    return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
                  },
                  itemCount: 3,
                  pagination: new SwiperPagination(),
//                  control: new SwiperControl(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

