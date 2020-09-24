import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/mobile/main_page.dart' as MobileMainPage;
import 'package:flutter_web_mobile/web/main_page.dart' as WebMainPage;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: kIsWeb
          ? WebMainPage.MainPage(title: "Sample App")
          : MobileMainPage.MainPage(
              title: "Sample App",
            ),
    );
  }
}
