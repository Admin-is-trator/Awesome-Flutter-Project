import 'package:flutter/cupertino.dart';

class ProductListTabPage extends StatelessWidget {
  const ProductListTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Product List Tab',
        style: TextStyle(fontSize: 15)),
      ),
    );
  }
}