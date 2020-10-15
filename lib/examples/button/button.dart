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
      this.loadingType = 'circular',
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
  final String loadingType;
  final double height; //按钮高度
  final size;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  Map<String, double> size = {'width': 58.0, 'height': 54.0};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }


  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    Widget _loadingWidget=Text('');
    if (widget.loading) {
      switch (widget.loadingType) {
        case 'circular':
          _loadingWidget = Container(
            height: Theme.of(context).textTheme.headline4.fontSize / 2,
            width: Theme.of(context).textTheme.headline4.fontSize / 2,
            margin: EdgeInsets.only(right: 5),
            child: CircularProgressIndicator(
              value: null,
              //用来表示进度多少
              backgroundColor:widget.plain ? Color( widget.color) : Colors.transparent,
              //背景颜色
              valueColor: new AlwaysStoppedAnimation<Color>(Color(0xffffffff)),
              //进度颜色
              strokeWidth: 1.5,
            ),
          );
          break;
        case 'spinner':
          _loadingWidget = Container(
            height: Theme.of(context).textTheme.headline4.fontSize / 2,
            width: Theme.of(context).textTheme.headline4.fontSize / 2,
            margin: EdgeInsets.only(right: 5),
            child: CupertinoActivityIndicator(),
          );
          break;
      }
    }

    print(_loadingWidget);
    return Row(
      children: [
        Container(
          height:48,
          decoration:BoxDecoration(
              color:Color(widget.plain ? 0xffffffff : widget.color),
              borderRadius: BorderRadius.all(Radius.circular(widget.round ? 24.0 : 4))),
          child: MaterialButton(
              minWidth: 0,
              elevation:0, //阴影
              padding: EdgeInsets.only(left: 8,right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.icon == null ? Text('') : widget.icon,
                  _loadingWidget,
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
              // color: Color(widget.plain ? 0xffffffff : widget.color),
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
