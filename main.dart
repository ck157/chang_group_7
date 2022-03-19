import 'package:flutter/cupertino.dart';
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
  get selectedItemColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("쉿! 비밀장부"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: () {},
          )
        ],
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: '경조사비',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: '채무관계',
            backgroundColor: Colors.green,
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}







//네비게이터는 바디를 2개로 만들어주는 뭔가 아래 같은거를 써야할꺼 같음

/*
class _MisoState extends State<Miso> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex, // index 순서에 해당하는 child를 맨 위에 보여줌
        children: [
          Page1(),
          page2(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // 현재 보여주는 탭
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");
          setState(() {
            // 보여주려는 index 변경
            currentIndex = newIndex;
          });
        },
        selectedItemColor: Colors.white, // 선택된 아이콘 색상
        unselectedItemColor: Colors.white, // 선택되지 않은 아이콘 색상
        showSelectedLabels: false, // 선택된 항목 label 숨기기
        showUnselectedLabels: false, // 선택되지 않은 항목 label 숨기기
        type: BottomNavigationBarType.fixed, // 선택시 아이콘 움직이지 않기
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(Text("경조사비", textScaleFactor: 1.5),
          BottomNavigationBarItem(Text("채무관계", textScaleFactor: 1.5), */