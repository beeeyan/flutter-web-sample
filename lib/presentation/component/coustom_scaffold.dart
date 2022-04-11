
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
        selectedRoute: 'テスト1',
      ),
      body: SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          children: const <Widget>[
           Text('aiu'),
           Text('eo')
          ],
        ),
      ),

    );
  }
  
}
