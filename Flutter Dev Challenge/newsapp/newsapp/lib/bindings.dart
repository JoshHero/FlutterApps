import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:newsapp/application/news/get_news_controller.dart';
import 'package:newsapp/infrastructure/news/get_news_impl.dart';

import 'constants.dart';


class AppBindings implements Bindings{
  @override
  void dependencies() {
    //inject dio
    Get.put(Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        headers: {'Authentication' : 'Bearer$API_KEY'}
      )));

    Get.put(NewsRepositoryImplementation(Get.find()));

    Get.put(GetNewsController(Get.find()));
  }


}