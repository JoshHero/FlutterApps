import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:newsapp/domain/models/articles_model.dart';

class NewsResponseModel {
  final String statusCode;
  final int totalResults;
  final List<Articles> articles;

  NewsResponseModel(
    this.statusCode,
    this.totalResults,
    this.articles,
  );

  NewsResponseModel copyWith({
    String? statusCode,
    int? totalResults,
    List<Articles>? articles,
  }) {
    return NewsResponseModel(
      statusCode ?? this.statusCode,
      totalResults ?? this.totalResults,
      articles ?? this.articles,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'statusCode': statusCode,
      'totalResults': totalResults,
      'articles': articles.map((x) => x.toMap()).toList(),
    };
  }

  factory NewsResponseModel.fromMap(Map<String, dynamic> map) {
    return NewsResponseModel(
      map['statusCode'],
      map['totalResults'],
      List<Articles>.from(map['articles']?.map((x) => Articles.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsResponseModel.fromJson(String source) => NewsResponseModel.fromMap(json.decode(source));

  @override
  String toString() => 'NewsResponseModel(statusCode: $statusCode, totalResults: $totalResults, articles: $articles)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NewsResponseModel &&
      other.statusCode == statusCode &&
      other.totalResults == totalResults &&
      listEquals(other.articles, articles);
  }

  @override
  int get hashCode => statusCode.hashCode ^ totalResults.hashCode ^ articles.hashCode;
}
