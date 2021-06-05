import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_1/controller/timer_controller.dart';


class TimeScreen extends StatelessWidget {
  final TimerController _timerController = Get.put(TimerController()); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        if(!_timerController.isRunning.value){
          return Center(
            child:GestureDetector(
            onTap: _timerController.start,
            child: Icon(Icons.play_arrow_outlined),));
        }else{
          return Center(
            child:  Text(_timerController.displayTimerValue.value) );
        }
      }),
    );
  }
}