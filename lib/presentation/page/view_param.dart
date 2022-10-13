import 'package:flutter/material.dart';
import 'package:flutter_web_sample/presentation/component/custom_scaffold.dart';

// URL
class ViewParamPage extends StatelessWidget {
  const ViewParamPage({Key? key, this.param}) : super(key: key);
  static const pageTitle = 'パラメータ表示';
  static const String route = '/viewparam';

  final String? param;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        title: pageTitle,
        index: 4,
        children: <Widget>[
          Center(child: Text('パラメータの表示 $param'),)
        ]);
  }
}
