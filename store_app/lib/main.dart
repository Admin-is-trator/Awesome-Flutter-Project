import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:store_app/home/home.dart';
import 'package:store_app/provider/app_state_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppStateModel>(
      create: (_) => AppStateModel()..loadProducts(),
      child: CupertinoApp(
        theme: const CupertinoThemeData(brightness: Brightness.light),
        debugShowCheckedModeBanner: false,
        home: HomePage()
      ),
    );
  }
}