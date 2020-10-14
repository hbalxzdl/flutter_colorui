import 'package:flutter/material.dart';
import 'package:flutter_colorui/examples/button/button.dart';
import 'package:flutter_colorui/utils/Icons.dart';


class Plugin extends StatefulWidget {
  @override
  _PluginState createState() => _PluginState();
}

class _PluginState extends State<Plugin> {
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
        body: new ListView(
          children: [
            Button(
              color: 0xFF7232dd,
              text: '12',
              round: true,
//              plain: true,
              disabled: true,
//              icon: Icon(
//                IconUtil.add,
//                color: Color(0xffffffff),
//              ),
            )
          ],
        ),
      ),
    );
  }
}
