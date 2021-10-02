import 'package:flutter/cupertino.dart';

class SearchTabPage extends StatefulWidget {
  @override
  _SearchTabPageState createState() {
    return _SearchTabPageState();
  }
}

class _SearchTabPageState extends State<SearchTabPage> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Search'),
        ),
      ],
    );
  }
}