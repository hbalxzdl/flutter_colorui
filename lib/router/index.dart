import 'package:flutter/material.dart';
import '../basics/layout.dart';
import '../component/index.dart';
import '../about/index.dart';
import '../plugin/index.dart';
import '../index/index.dart';




class Router extends StatefulWidget {
  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes:{
          "/index": (context) => Index(),
          "/Component": (context) => Component(),
          "/Plugin": (context) => Plugin(),
          "/About": (context) => About(),
        }
    );
  }
}


