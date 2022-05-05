import 'package:flutter/material.dart';
import 'package:flutter_web_sample/presentation/page/home.dart';
import 'package:flutter_web_sample/presentation/page/test1.dart';
import 'package:flutter_web_sample/presentation/page/test2.dart';
import 'package:flutter_web_sample/presentation/page/test3.dart';
import 'package:flutter_web_sample/presentation/page/view_param.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final paths = settings.name!.split('?');
    final path = paths[0];
    print(paths);
    Map<String, String> queryParameters = {};
    if (paths.length > 1) {
      queryParameters = Uri.splitQueryString(paths[1]);
    }
    print(queryParameters);

    switch (path) {
      case HomePage.route:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: RouteSettings(name: settings.name),
        );
      case Test1Page.route:
        return MaterialPageRoute(
          builder: (_) => const Test1Page(),
          settings: RouteSettings(name: settings.name),
        );
      case Test2Page.route:
        return MaterialPageRoute(
          builder: (_) => const Test2Page(),
          settings: RouteSettings(name: settings.name),
        );
      case Test3Page.route:
        return MaterialPageRoute(
          builder: (_) => const Test3Page(),
          settings: RouteSettings(name: settings.name),
        );
      case ViewParamPage.route:
        return MaterialPageRoute(
            builder: (_) => ViewParamPage(
                  param: queryParameters['param'],
                ),
            settings: RouteSettings(name: settings.name));
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
