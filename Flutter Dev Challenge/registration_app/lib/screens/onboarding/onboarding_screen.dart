import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration_app/screens/onboarding/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.transparent,
        actions:[
          IconButton(
            icon: Icon(Icons.arrow_forward_ios, size:26, color: Colors.white),
            onPressed: (){
              
            },
          )
        ]
      ),
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
              controller: controller.pageController,
              onPageChanged: controller.selectedPageIndex,
              itemCount: controller.onBoardingDetails.length,
              itemBuilder: (context, index) => Stack(
                    children: [
                      // Image.asset(controller.onBoardingDetails[index].color!,
                      //     fit: BoxFit.fill,
                      //     height: size.height,
                      //     width: size.width),
                      Container(
                          height: size.height,
                          width: size.width,
                          color: controller.onBoardingDetails[index].color!),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                controller.onBoardingDetails[index].heading!,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 35))),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              controller.onBoardingDetails[index].caption!,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: Obx(() => Row(
                              children: List.generate(
                                  controller.onBoardingDetails.length,
                                  (index) => Container(
                                        height: 10,
                                        width: controller
                                                    .selectedPageIndex.value ==
                                                index
                                            ? 30
                                            : 10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: controller.selectedPageIndex
                                                        .value ==
                                                    index
                                                ? Colors.green
                                                : Colors.grey),
                                      )),
                            )),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                          child: controller.isLastPage
                              ? Container(
                                height: 40,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.green),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('DONE', style:TextStyle(color:Colors.black, fontWeight: FontWeight.bold))))
                               : Container( color: Colors.transparent))
                    ],
                  ))
        ],
      )),
    );
  }
}
