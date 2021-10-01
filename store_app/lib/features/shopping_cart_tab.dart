import 'package:flutter/cupertino.dart';

class ShoppingCartTabPage extends StatelessWidget {
  const ShoppingCartTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Shopping Cart Tab',
        style: TextStyle(fontSize: 15),),
      ),
    );
  }
}