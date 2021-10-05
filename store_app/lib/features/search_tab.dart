import 'package:flutter/cupertino.dart';

class SearchTabPage extends StatefulWidget {
  const SearchTabPage({Key? key}) : super(key: key);

  @override
  _SearchTabPageState createState() {
    return _SearchTabPageState();
  }
}

class _SearchTabPageState extends State<SearchTabPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text(
            'Search',
            style: CupertinoTheme.of(context).copyWith().textTheme.textStyle,
          ),
        ),
      ],
    );
  }
}
