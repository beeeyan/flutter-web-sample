import 'package:flutter/material.dart';
import 'package:flutter_web_sample/presentation/component/custom_scaffold.dart';

// URL
class Test1Page extends StatelessWidget {
  const Test1Page({Key? key}) : super(key: key);
  static const pageTitle = 'テスト1';
  static const String route = '/test1';

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
        route: route,
        title: pageTitle,
        children: <Widget>[
          Center(child: Text('test1'),)
        ]);
  }
}
