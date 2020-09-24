import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/mobile/hotel_booking/hotel_home_screen.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/hotel/hotel_booking.png',
      navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/fitness_app/fitness_app.png',
      navigateScreen: Container(),
    ),
    HomeList(
      imagePath: 'assets/design_course/design_course.png',
      navigateScreen: Container(),
    ),
  ];
}
