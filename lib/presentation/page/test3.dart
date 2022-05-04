import 'package:flutter/material.dart';
import 'package:flutter_web_sample/presentation/component/custom_scaffold.dart';

// URL
class Test3Page extends StatelessWidget {
  const Test3Page({Key? key}) : super(key: key);
  static const pageTitle = 'テスト3';
  static const String route = '/test3';

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
        route: route,
        title: pageTitle,
        children: <Widget>[
          Center(child: Text('test3'),)
        ]);
  }
}
