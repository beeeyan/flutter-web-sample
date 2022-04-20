import 'package:flutter/material.dart';
import 'package:flutter_web_sample/presentation/component/coustom_scaffold.dart';

// URL
class Test2Page extends StatelessWidget {
  const Test2Page({Key? key}) : super(key: key);
  static const pageTitle = 'テスト2';
  static const String route = '/test2';

  @override
  Widget build(BuildContext context) {
    return const CoustomScaffold(
        route: route,
        title: pageTitle,
        children: <Widget>[
          Center(child: Text('test2'),)
        ]);
  }
}
