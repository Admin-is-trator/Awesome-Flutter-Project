import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:store_app/home/home.dart';
import 'package:store_app/provider/app_state_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppStateModel>(
      create: (_) => AppStateModel()..loadProducts(),
      child: CupertinoApp(
          theme: CupertinoThemeData(
              brightness: Brightness.light,
              textTheme: CupertinoTextThemeData(
                tabLabelTextStyle: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily),
                  textStyle:
                      TextStyle(fontFamily: GoogleFonts.poppins().fontFamily))),
          debugShowCheckedModeBanner: false,
          home: const HomePage()),
    );
  }
}
