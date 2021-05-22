import 'package:flutter/material.dart';

import 'next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new MainPage(),
        '/next': (BuildContext context) => new NextPage()
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ここは最初のページです。"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("ここは最初のページです。"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // 値を渡す
          onPressed: () => Navigator.of(context)
              .pushNamed("/next", arguments: "次の画面へ渡す値だよ！"),
          child: Icon(Icons.add),
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/next': (BuildContext context) => new NextPage(),
      },
    );
  }
}