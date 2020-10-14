import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorui/utils/Colors.dart';


enum LoadingType{
  circular,
  spinner
}

class Button extends StatefulWidget {


  Button({
    Key key,
    this.text,
    this.icon,
    this.color,
    this.round=false,
    this.plain=false,
    this.disabled=false,
    this.loading=false,
    this.loadingType=LoadingType.circular


  }): super(key: key);



  final String text; //按钮文字
  final Icon icon; //左侧图标名称
  final int color;  //按钮颜色
  final bool round;  //是否为圆形按钮
  final bool plain; //是否为朴素按钮
  final bool disabled;  //是否禁用按钮
  final bool loading; //是否显示为加载状态
  final  loadingType;


  @override
  _ButtonState createState() => _ButtonState();


}

class _ButtonState extends State<Button> {



  Widget loadingWidget=Text('data');


  
  @override
  // TODO: implement widget
  Button get widget => super.widget;

  @override
  Widget build(BuildContext context) {

    switch (widget.loadingType) {
      case LoadingType.circular:
         return loadingWidget= CircularProgressIndicator(
            value: null, //用来表示进度多少
            backgroundColor: Color(0xffebeef5),  //背景颜色
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),  //进度颜色
            strokeWidth: 2,

          );
          break;
      case LoadingType.spinner:

        break;

    }

    return Container(
      child: MaterialButton(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.icon==null?Text(''):widget.icon,


            CircularProgressIndicator(
              value: null, //用来表示进度多少
              backgroundColor: Color(0xffebeef5),  //背景颜色
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),  //进度颜色
              strokeWidth: 6,

            ),

            Text(widget.text,style: TextStyle(
              //为plain时，文字颜色要变
                color:Color(widget.plain?widget.color:0xffffffff)
            ),)
          ],
        ),

        color:Color(widget.plain?0xffffffff:widget.color),
          shape:RoundedRectangleBorder(
            //为plain时，边框颜色和字体颜色保持一致
              borderRadius: BorderRadius.all(Radius.circular(widget.round?20:0)),
              side:widget.disabled?BorderSide.none:BorderSide(color: Color(widget.color),width: .5)
          ),
        disabledColor: widget.disabled?ColorsUtil.hexColor(widget.color,alpha: .5):null,

        onPressed:widget.disabled?null:(){

        }
      ),
    );
  }
}
