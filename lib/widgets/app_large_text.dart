import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  AppLargeText({Key? key, this.size = 30, required this.text, this.color = Colors.black}) : super(key: key);
  double size;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:TextStyle(
        color:color,
        fontSize: size,
        fontWeight: FontWeight.w500,
      ) ,
    );
  }
}

class AppMText extends StatelessWidget {
  AppMText({Key? key, this.size = 30, required this.text, this.color = Colors.black}) : super(key: key);
  double size;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:TextStyle(
          color:color,
          fontSize: size,
          fontWeight: FontWeight.w200,
      ) ,
    );
  }
}

class AppText extends StatelessWidget {
  AppText({Key? key, this.size = 15, required this.text, this.color = Colors.black}) : super(key: key);
  double size;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:TextStyle(
          color:color,
          fontSize: size,
          fontWeight: FontWeight.w300,
        height: 1.3,
      ) ,
    );
  }
}
