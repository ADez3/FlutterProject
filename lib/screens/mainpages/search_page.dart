import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Center(child: SvgPicture.asset('assets/icons/@.svg',color: Colors.orange,)),
        );
  }
}
