import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:store_app/provider/app_state_model.dart';

import 'product_item_row.dart';

class ProductListTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Consumer<AppStateModel>(
        builder: (context, model, child) {
          final products = model.getProducts();
          return CustomScrollView(
            semanticChildCount: products.length,
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text('IDN Store'),
              ),
              SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index < products.length) {
                        return ProductRowItem(
                          product: products[index],
                          lastItem: index == products.length - 1,
                        );
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}