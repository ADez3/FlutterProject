import 'package:flutter/material.dart';
import 'package:fluttermasterproject/iconsProvider/my_icons_icons.dart';
import 'package:fluttermasterproject/widgets/app_large_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mountain.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 350,
                width: double.maxFinite,
              ),
            ),
            Positioned(
              top: 50,
              left: 25,
              right: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      MyIcons.text_align_left,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      MyIcons.ellipsis_vertical,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 330,
              child: Container(
                padding: EdgeInsets.only(left: 25,right: 25,top: 25),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppLargeText(text: 'Yosemite',size: 25,),
                        Text('\$ 250',style :TextStyle(color: Colors.purple,fontSize: 25,)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(MyIcons.location_marker,color: Colors.purple,size: 15,),
                        SizedBox(width: 5,),
                        AppText(text: 'USA, California',size: 12,),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(MyIcons.star,color: Colors.green,),
                        Icon(MyIcons.star,color: Colors.green,),
                        Icon(MyIcons.star,color: Colors.green,),
                        Icon(MyIcons.star,color: Colors.green,),
                        Icon(MyIcons.star),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
