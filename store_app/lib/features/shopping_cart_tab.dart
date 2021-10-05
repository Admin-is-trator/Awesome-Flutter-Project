import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:store_app/provider/app_state_model.dart';

class ShoppingCartTabPage extends StatefulWidget {
  const ShoppingCartTabPage({Key? key}) : super(key: key);

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
        return CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text(
                'Shopping Cart',
                style:
                    CupertinoTheme.of(context).copyWith().textTheme.textStyle,
              ),
            ),
          ],
        );
      },
    );
  }
}
