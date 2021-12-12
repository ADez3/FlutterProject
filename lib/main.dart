import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:fluttermasterproject/screens/introduction_page.dart';
import 'package:fluttermasterproject/screens/mainpages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.dark,
    //     systemNavigationBarColor: Colors.transparent,
    //     systemNavigationBarIconBrightness: Brightness.light,
    //   ),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
