import 'package:flutter/material.dart';

// URLの確認
class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);
  static const String route = '/test';
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('test page')),
    );
  }
}
