import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_colorui/utils/Colors.dart';

enum LoadingType { circular, spinner }
enum Size { normal, large, small, mini }

class Button extends StatefulWidget {
  Button(
      {Key key,
      this.text,
      this.icon,
      this.color,
      this.round = false,
      this.plain = false,
      this.disabled = false,
      this.loading = false,
      this.loadingType = LoadingType.circular,
      this.size = Size.normal,
      this.height = 40})
      : super(key: key);

  final String text; //按钮文字
  final Icon icon; //左侧图标名称
  final int color; //按钮颜色
  final bool round; //是否为圆形按钮
  final bool plain; //是否为朴素按钮
  final bool disabled; //是否禁用按钮
  final bool loading; //是否显示为加载状态
  final loadingType;
  final double height; //按钮高度
  final size;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Widget loadingWidget = Text('');
  Map<String, double> size = {'width': 58.0, 'height': 54.0};

  @override
  // TODO: implement widget

  @override
  Widget build(BuildContext context) {
    if (widget.loading) {
      switch (widget.loadingType) {
        case LoadingType.circular:
          loadingWidget = Container(
            height: Theme.of(context).textTheme.headline4.fontSize / 2,
            width: Theme.of(context).textTheme.headline4.fontSize / 2,
            margin: EdgeInsets.only(right: 5),
            child: CircularProgressIndicator(
              value: 1,
              //用来表示进度多少
              backgroundColor: Colors.transparent,
              //背景颜色
              valueColor: new AlwaysStoppedAnimation<Color>(Color(0xffffffff)),
              //进度颜色
              strokeWidth: 1.5,
            ),
          );
          break;
        case LoadingType.spinner:
          loadingWidget = Container(
            height: Theme.of(context).textTheme.headline4.fontSize / 2,
            width: Theme.of(context).textTheme.headline4.fontSize / 2,
            margin: EdgeInsets.only(right: 5),
            child: CupertinoActivityIndicator(),
          );
          break;
      }
    }

    // witch (widget.size){
    //
    // }

    print(widget.round);

    return Row(
      children: [
        Container(

          child: MaterialButton(
              minWidth: 0,
              height:24,
              padding: EdgeInsets.only(left: 4,right: 4),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.icon == null ? Text('') : widget.icon,
                  loadingWidget,
                  Text(
                    widget.text,
                    style: TextStyle(
                      //为plain时，文字颜色要变
                      color: Color(widget.plain ? widget.color : 0xffffffff),
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              //如果是
              color: Color(widget.plain ? widget.color : widget.color),
              shape: RoundedRectangleBorder(
                  //为plain时，边框颜色和字体颜色保持一致
                  borderRadius:
                      BorderRadius.all(Radius.circular(widget.round ? 20.0 : 4)),
                  side: widget.disabled
                      ? BorderSide.none
                      : BorderSide(color: Color(widget.color), width: .5)),
              disabledColor: widget.disabled
                  ? ColorsUtil.hexColor(widget.color, alpha: .5)
                  : null,

              //
              onPressed: widget.disabled || widget.loading ? null : () {}),
        ),
      ],
    );
  }
}
