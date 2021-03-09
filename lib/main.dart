import 'package:flutter/material.dart';
import 'package:list_view_test/view/tabom_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Tabom List View Test Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final Widget firstWidget = TabomListView();
  final Widget secondWidget = TabomListViewStless();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _getBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car), label: 'stful'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_bus), label: 'stless'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_train), label: 'noting')
        ],
      ),
    );
  }

  _getBody(int index) {
    switch(index) {
      case 0 : return widget.firstWidget;
      case 1 : return widget.secondWidget;
      case 2 : return Center(child: Icon(Icons.directions_train, size: 100),);
    }
  }
}
