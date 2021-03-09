import 'package:flutter/material.dart';
import 'package:korean_words/korean_words.dart';
import 'package:list_view_test/component/get_word.dart';

class TabomListView extends StatefulWidget {

  final words = GetWord.random().toList();

  @override
  _TabomListViewState createState() => _TabomListViewState();
}

class _TabomListViewState extends State<TabomListView> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      key: PageStorageKey<String>('ListViewController'),
      itemCount: 500,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('$index. ${widget.words[index]}', ),
          // Image.network('https://cdn2.thecatapi.com/images/RYFFts9j5.jpg'),
        );
      },
    );
  }
}

class TabomListViewStless extends StatelessWidget {
  final List<KoreanWords> words = GetWord.random().toList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: PageStorageKey<String>('ListViewControllerStateless'),
      itemCount: 500,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('$index. ${words[index]}'),
          // Image.network('https://cdn2.thecatapi.com/images/RYFFts9j5.jpg'),
        );
      },
    );
  }
}