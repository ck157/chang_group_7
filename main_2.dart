import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map> _records = [
    {
      '이름': "김치완",
      '관계': '친구',
      '날짜': '3/18/2022',
      // '행사': '결혼식',
      // '참석여부': '참석',
      '들어온 돈': '3000',
      '나간 돈': '5000'
    },
    {
      '이름': "손태국",
      '관계': '친구',
      '날짜': '3/18/2022',
      // '행사': '결혼식',
      // '참석여부': '참석',
      '들어온 돈': '6000',
      '나간 돈': '5000'
    },
    {
      '이름': "장우준",
      '관계': '친구',
      '날짜': '3/18/2022',
      // '행사': '결혼식',
      // '참석여부': '참석',
      '들어온 돈': '9000',
      '나간 돈': '5000'
    },
  ];
  int _currentSortColumn = 0;
  bool _isSortAsc = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('쉿! 비밀장부'),
        ),
        body: ListView(
          children: [_createDataTable()],
        ),
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(
      columns: _createColumns(),
      rows: _createRows(),
      dividerThickness: 5,
      dataRowHeight: 80,
      sortColumnIndex: _currentSortColumn,
      sortAscending: _isSortAsc,
      showBottomBorder: true,
      headingTextStyle:
          TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      headingRowColor:
          MaterialStateProperty.resolveWith((states) => Colors.black),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('이름')),
      DataColumn(label: Text('관계')),
      DataColumn(label: Text('날짜')),
      // DataColumn(label: Text('행사')),
      // DataColumn(label: Text('참석여부')),
      DataColumn(
        label: Text('들어온 돈'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _records.sort((a, b) => b['들어온 돈'].compareTo(a['들어온 돈']));
            } else {
              _records.sort((a, b) => a['들어온 돈'].compareTo(b['들어온 돈']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(label: Text('나간 돈'))
    ];
  }

  List<DataRow> _createRows() {
    return _records
        .map((records) => DataRow(cells: [
              DataCell(Text(records['이름'])),
              DataCell(Text(records['관계'])),
              DataCell(Text(records['날짜'])),
              // DataCell(Text(records['행사'])),
              // DataCell(Text(records['참석여부'])),
              DataCell(Text(records['들어온 돈'])),
              DataCell(Text(records['나간 돈']))
            ]))
        .toList();
  }
}
