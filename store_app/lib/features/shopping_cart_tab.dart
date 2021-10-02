import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:store_app/provider/app_state_model.dart';

class ShoppingCartTabPage extends StatefulWidget {
  @override
  _ShoppingCartTabPageState createState() {
    return _ShoppingCartTabPageState();
  }
}

class _ShoppingCartTabPageState extends State<ShoppingCartTabPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Shopping Cart'),
            ),
          ],
        );
      },
    );
  }
}