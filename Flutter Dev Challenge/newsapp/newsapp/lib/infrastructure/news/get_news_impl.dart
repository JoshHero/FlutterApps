import 'package:dio/dio.dart';
import 'package:newsapp/domain/models/articles_model.dart';
import 'package:newsapp/domain/models/news_response_model.dart';
import 'package:newsapp/domain/repositories/news_repo/news_repository.dart';

class NewsRepositoryImplementation implements NewsRepository{
  final Dio dio;

  NewsRepositoryImplementation(this.dio);
  @override
  Future<List<Articles>> getLatestNews() async {
    try{
      final response = await dio.get('/top-headlines');
      if(response.data != null && response.statusCode ==200){
      
      final dataFromJson = NewsResponseModel.fromJson(response.data);

      return dataFromJson.articles;
      }
    }on DioError{
      print('Error');

    }

    return [];
  }

  @override
  Future<List<Articles>> getSearchNews(String searchItem) async {
    try{
      final response = await dio.get('/everything?q=$searchItem');
      if(response.data != null && response.statusCode ==200){
      
      final dataFromJson = NewsResponseModel.fromJson(response.data);

      return dataFromJson.articles;
      }
    }on DioError{
      print('Error');

    }
    return [];
  }

}