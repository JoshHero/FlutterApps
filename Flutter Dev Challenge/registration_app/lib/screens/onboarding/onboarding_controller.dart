import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:registration_app/models/onboarding_model.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  
  bool get isLastPage =>
      selectedPageIndex.value  == onBoardingDetails.length;

  
  nextPage() {
    if (isLastPage) {
      Get.to('');
    } else {
      pageController.animateTo(1,
          duration: Duration(milliseconds: 100), curve: Curves.bounceInOut);
    }
  }



  List<OnboardModel> onBoardingDetails = [
    OnboardModel(
      color: Color(0xFF21ADEE),
        // img: 'assets/images/img_1.jpg',
        heading: 'Get All Your Favorites In One Place',
        caption:
            'Why listen to music the old way. Enjoy your music digitally with no stress'),
    OnboardModel(
         color: Color(0xFF27B404),
        // img: 'assets/images/img_2.jpg',
        heading: 'Let Your Music Feel Your Heart',
        caption: 'Never have a dull moment!'),
    OnboardModel(
          color: Color(0xFFEE2321),
        // img: 'assets/images/img_1.jpg',
        heading: 'Connect With Musicians Like Yourself and Jam!',
        caption: 'See what others are doing and let them see you too!'),
    OnboardModel(
        color: Color(0xFF21ADEE),
        // img: 'assets/images/img_1.jpg',
        heading: 'Know When The Event Is Going To Happen!',
        caption: 'Keep yourself updated on the go'),
  ];
}
