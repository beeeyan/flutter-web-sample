import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_web_sample/enum/resposive_type.dart';
import 'package:flutter_web_sample/presentation/component/responsive_scaffold.dart';
import 'package:flutter_web_sample/presentation/page/home.dart';
import 'package:flutter_web_sample/presentation/page/test1.dart';
import 'package:flutter_web_sample/presentation/page/test2.dart';
import 'package:flutter_web_sample/presentation/page/test3.dart';
import 'package:flutter_web_sample/presentation/page/view_param.dart';
import 'package:flutter_web_sample/util/responsive_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// メニュー押下時の遷移先
final _paths = [
  HomePage.route,
  Test1Page.route,
  Test2Page.route,
  Test3Page.route,
  ViewParamPage.route + '?param=get parameter',
];

///　サイドバーを表示するためのラッパー
///
///
class CustomScaffold extends ConsumerWidget {
  const CustomScaffold({
    Key? key,
    required this.title,
    required this.children,
    required this.index
  }) : super(key: key);

  final String title;
  final List<Widget> children;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final responsiveType =
        ref.watch(responsiveProvider.notifier).getResponsiveType();
    return ResponsiveScaffold(
      responsiveType: responsiveType,
      appBar: AppBar(
        title: Text(title),
      ),
      destinations: const [
        NavigationRailDestination(
          label: Text(HomePage.pageTitle),
          icon: Icon(
            Icons.account_box_rounded,
          ),
        ),
        NavigationRailDestination(
          label: Text(Test1Page.pageTitle),
          icon: Icon(
            Icons.assignment,
          ),
        ),
        NavigationRailDestination(
          label: Text(Test2Page.pageTitle),
          icon: Icon(
            Icons.circle_notifications,
          ),
        ),
        NavigationRailDestination(
          label: Text(Test3Page.pageTitle),
          icon: Icon(
            Icons.circle_notifications,
          ),
        ),
        NavigationRailDestination(
          label: Text(ViewParamPage.pageTitle),
          icon: Icon(
            Icons.circle_notifications,
          ),
        ),
      ],
      selectedIndex: index,
      onSelectedIndexChange: (int index) => Navigator.pushNamed(context, _paths[index]),
      extendedNavigationRailWidth: 220.0,
      children: children,
    );
  }
}
