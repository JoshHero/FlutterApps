import 'package:newsapp/domain/models/articles_model.dart';

abstract class NewsRepository{
  Future<List<Articles>> getLatestNews();
  Future<List<Articles>> getSearchNews(String searchItem);
}