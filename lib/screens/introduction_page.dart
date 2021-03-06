import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttermasterproject/theme/colors.dart';
import 'package:fluttermasterproject/widgets/app_large_text.dart';
import 'package:fluttermasterproject/widgets/button.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [],
    );
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/${images[index]}",
                  ),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 120,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppLargeText(text: 'Trips'),
                        const AppMText(text: 'Mountain',color: AppColors.textColor2,),
                        const SizedBox(height: 15,),
                        const SizedBox(
                          width: 250,
                          child: AppText(
                            text: 'description that describe the description of description that describes descriptions',
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        ResButton(),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexSlider){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index == indexSlider ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexSlider ?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
