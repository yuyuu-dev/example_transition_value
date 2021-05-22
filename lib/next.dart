import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // `ModalRoute.of()`メソッドを使用して引数を取得
    final String args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("ここは次ページです。"),
      ),
      body: Center(
        child: Text(args),
      ),
    );
  }
}
