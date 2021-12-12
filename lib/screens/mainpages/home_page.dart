import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttermasterproject/iconsProvider/my_icons_icons.dart';
import 'package:fluttermasterproject/theme/colors.dart';
import 'package:fluttermasterproject/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    'balloning.png':'Balloning',
    'hiking.png':'Hiking',
    'kayaking.png':'Kayaking',
    'snorkling.png':'Snorkling',
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 60, left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                MyIcons.text_align_left,
                size: 30,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          child: const AppLargeText(
            text: 'Discover',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              indicator: CircleIndicator(color: AppColors.mainColor, radius: 5),
              labelPadding: const EdgeInsets.only(left: 15, right: 15),
              padding: const EdgeInsets.only(left: 20, right: 25),
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: const [
                Tab(
                  text: 'Places',
                ),
                Tab(
                  text: 'Inspiration',
                ),
                Tab(
                  text: 'Emotions',
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10),
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    margin: const EdgeInsets.only(left: 20),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/mountain.jpeg'),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: const [
                        AppMText(
                          text: 'USA , California',
                          size: 15,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
              const AppText(text: 'Test2'),
              const AppText(text: 'Test3'),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppLargeText(
                text: 'Explore more',
                size: 20,
              ),
              AppText(
                text: 'See all',
                color: Colors.blue,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          width: double.maxFinite,
          // margin: const EdgeInsets.only(left: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (_, index) {
              return Container(
                margin: const EdgeInsets.only(left: 20,right: 10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/'+images.keys.elementAt(index)),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: const [
                          AppMText(
                            text: 'USA',
                            size: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 3,),
                    AppText(text: images.values.elementAt(index),size: 12,)
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CircleIndicator extends Decoration {
  final Color color;
  double radius;

  CircleIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius / 2);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
