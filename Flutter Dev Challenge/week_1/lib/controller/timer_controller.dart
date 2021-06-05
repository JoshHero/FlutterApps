

import 'dart:async';

import 'package:get/get.dart';

class TimerController extends GetxController{
  Stopwatch _stopwatch = Stopwatch();
  Timer?t;
  RxString intialSeconds = '0'.obs;
  RxString initialMinutes = '30'.obs;
  RxString displayTimerValue = '30.00'.obs;
  RxBool isRunning = false.obs;

  


  void start(){
    if(!_stopwatch.isRunning){
      _stopwatch.start();
      displayUpdateTimeString();
      isRunning.value = true;
    }
  }
  void pause(){
    if(_stopwatch.isRunning){
      _stopwatch.stop();
    }
  }

  void resume(){
    if(!_stopwatch.isRunning){
      _stopwatch.start();
    }
  }

  void reset(){
    _stopwatch.reset();
  }
  void displayUpdateTimeString(){
    Timer.periodic(Duration(seconds: 1), (t) { 
       displayTimerValue.value = updateTimeString();
       print(displayTimerValue.value);
    
    });
  }

  String updateTimeString(){
    String str = '';
    int startingMinutes = int.parse(initialMinutes.value);
    int startingSeconds = int.parse(intialSeconds.value);

    if((_stopwatch.elapsed.inSeconds % 60) >= 1){
      str += '${startingMinutes - _stopwatch.elapsed.inMinutes-1}:';
    }
    else{
      str += '${startingMinutes - _stopwatch.elapsed.inMinutes}:';
    }

    str += '${((startingSeconds - _stopwatch.elapsed.inSeconds)% 60).toString().padLeft(2, '0')}';

    return str;

  }
}
