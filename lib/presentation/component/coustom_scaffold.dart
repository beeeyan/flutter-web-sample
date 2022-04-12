import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

///　サイドバーを表示するためのラッパー
///
///
class CoustomScaffold extends StatelessWidget {
  const CoustomScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('管理画面の例'),
      ),
      sideBar: const SideBar(
        backgroundColor: Colors.blueGrey,
        textStyle: TextStyle(color: Colors.white, fontSize: 16),
        items: [
          MenuItem(
            title: 'テスト1',
            route: '/test1',
          ),
          MenuItem(
            title: 'テスト2',
            route: '/test2',
          ),
          MenuItem(
            title: 'テスト3',
            route: '/test3',
          ),
          MenuItem(
            title: 'テスト4',
            route: '/test4',
          ),
        ],
        selectedRoute: '/test1',
      ),
      body: SingleChildScrollView(
        child: BootstrapContainer(fluid: true, children: <Widget>[
          BootstrapContainer(
            fluid: false,
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.only(top: 50),
            children: <Widget>[
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
          ),
        ]),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: color,
      child: Text(text),
    );
  }
}
