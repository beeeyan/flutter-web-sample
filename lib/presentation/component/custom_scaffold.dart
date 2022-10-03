import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_web_sample/presentation/page/home.dart';
import 'package:flutter_web_sample/presentation/page/test1.dart';
import 'package:flutter_web_sample/presentation/page/test2.dart';
import 'package:flutter_web_sample/presentation/page/test3.dart';
import 'package:flutter_web_sample/presentation/page/view_param.dart';

///　サイドバーを表示するためのラッパー
///
///
class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {Key? key,
      required this.route,
      required this.title,
      required this.children})
      : super(key: key);

  final String route;
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
      ),
      sideBar: SideBar(
        backgroundColor: Colors.blueGrey,
        textStyle: const TextStyle(color: Colors.white, fontSize: 16),
        items: const [
          AdminMenuItem(
            title: HomePage.pageTitle,
            route: HomePage.route,
          ),
          AdminMenuItem(
            title: Test1Page.pageTitle,
            route: Test1Page.route,
          ),
          AdminMenuItem(
            title: Test2Page.pageTitle,
            route: Test2Page.route,
          ),
          AdminMenuItem(
            title: Test3Page.pageTitle,
            route: Test3Page.route,
          ),
          AdminMenuItem(
            title: ViewParamPage.pageTitle,
            route: ViewParamPage.route + '?param=get parameter',
          ),
        ],
        selectedRoute: route,
        onSelected: (item) {
          if (item.route != null) {
            Navigator.pushNamed(context, item.route!);
          }
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
