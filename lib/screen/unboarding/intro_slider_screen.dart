// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie/screen/registration/welcome_screen.dart';
import 'package:foodie/widget/title_desc_widget.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroScreenDefault extends StatefulWidget {
  const IntroScreenDefault({super.key});

  @override
  State<IntroScreenDefault> createState() => IntroScreenDefaultState();
}

class IntroScreenDefaultState extends State<IntroScreenDefault> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      ContentConfig(
        widgetDescription: TitleDescWidget(
          title: 'Nearby restaurants',
          description:
              'You dont have to go far to find resturant, we have provided all the resturants that is near you',
        ),
        pathImage: "assets/images/order.png",
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      ContentConfig(
        widgetDescription: TitleDescWidget(
          title: 'Select the Favorites Menu',
          description:
              'Now eat well, dont t leave the house,You can choose your favorite food only with one click',
        ),
        pathImage: "assets/images/safe_food.png",
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      ContentConfig(
          pathImage: "assets/images/tracking_maps.png",
          backgroundColor: Colors.white,
          widgetDescription: TitleDescWidget(
            title: 'Good food at a cheap price',
            description:
                'You can eat at expensive restaurants with an affordable price',
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      },
      onSkipPress: () {
         Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      }, 
    );
  }
}
