import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BarPage extends StatelessWidget {
  const BarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: SvgPicture.asset('assets/icons/magnifier.svg',color: Colors.orange,)),
    );
  }
}
