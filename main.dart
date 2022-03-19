import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("쉿! 비밀장부"),
        backgroundColor: Colors.green,
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "주거나 받거니",
            textScaleFactor: 2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            // textDirection: TextDirection.rtl,
            // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            // border:TableBorder.all(width: 2.0,color: Colors.red),
            children: [
              TableRow(children: [
                Text(
                  "이름",
                  textScaleFactor: 1.5,
                ),
                Text("관계", textScaleFactor: 1.5),
                Text("날짜", textScaleFactor: 1.5),
                Text("행사", textScaleFactor: 1.5),
                Text("참석여부", textScaleFactor: 1.5),
                Text("들어온 돈", textScaleFactor: 1.5),
                Text("나간 돈", textScaleFactor: 1.5),
              ]),
              TableRow(children: [
                Text("김치완", textScaleFactor: 1.5),
                Text("친구", textScaleFactor: 1.5),
                Text("2020-03-19", textScaleFactor: 1.5),
                Text("결혼식", textScaleFactor: 1.5),
                Text("참석", textScaleFactor: 1.5),
                Text("0.00", textScaleFactor: 1.5),
                Text("5.00", textScaleFactor: 1.5),
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
