import 'package:get/get.dart';
import 'package:newsapp/domain/models/articles_model.dart';
import 'package:newsapp/infrastructure/news/get_news_impl.dart';

class GetNewsController extends GetxController{
final NewsRepositoryImplementation impl;

GetNewsController(this.impl);

RxList<Articles> ? articles;

void loadNews() async {
  final result = await impl.getLatestNews();
  // ignore: unnecessary_null_comparison
  if (result!=null){
    articles = result.obs;
  }else{
    Get.snackbar('Error', 'Could not load any news');
  }
}
}