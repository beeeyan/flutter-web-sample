import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_web_sample/presentation/component/content_widget.dart';
import 'package:flutter_web_sample/presentation/component/coustom_scaffold.dart';

// URL
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const pageTitle = 'ホーム';
  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return CoustomScaffold(
      route: route,
      title: pageTitle,
      children: <Widget>[
        BootstrapRow(
          height: 60,
          children: <BootstrapCol>[
            BootstrapCol(
              sizes: 'col-6',
              child: const Text('test1'),
            ),
          ],
        ),
        BootstrapRow(
          height: 60,
          children: <BootstrapCol>[
            BootstrapCol(
              sizes: 'col-6',
              child: const ContentWidget(
                text: 'col 1 of 2',
                color: Colors.red,
              ),
            ),
            BootstrapCol(
              sizes: 'col-6',
              child: const ContentWidget(
                text: 'col 2 of 2',
                color: Colors.red,
              ),
            ),
          ],
        ),
        BootstrapRow(
          height: 60,
          children: <BootstrapCol>[
            BootstrapCol(
              sizes: 'col-6',
              child: const Text('こっちはText'),
            ),
            BootstrapCol(
              sizes: 'col-6',
              child: const SelectableText('こっちはSelectableText'),
            ),
          ],
        ),
      ],
    );
  }
}
