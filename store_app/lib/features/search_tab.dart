import 'package:flutter/cupertino.dart';

class SearchTabPage extends StatelessWidget {
  const SearchTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Search Tab',
        style: TextStyle(fontSize: 15)),
      ),
    );
  }
}