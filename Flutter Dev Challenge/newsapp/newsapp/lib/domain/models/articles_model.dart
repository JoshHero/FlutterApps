import 'dart:convert';

class Articles {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String content;
  final DateTime publishedAt;

  Articles(
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.content,
    this.publishedAt,
  );

  Articles copyWith({
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? content,
    DateTime? publishedAt,
  }) {
    return Articles(
      author ?? this.author,
      title ?? this.title,
      description ?? this.description,
      url ?? this.url,
      urlToImage ?? this.urlToImage,
      content ?? this.content,
      publishedAt ?? this.publishedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'content': content,
      'publishedAt': publishedAt.millisecondsSinceEpoch,
    };
  }

  factory Articles.fromMap(Map<String, dynamic> map) {
    return Articles(
      map['author'],
      map['title'],
      map['description'],
      map['url'],
      map['urlToImage'],
      map['content'],
      DateTime.fromMillisecondsSinceEpoch(map['publishedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Articles.fromJson(String source) => Articles.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Articles(author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, content: $content, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Articles &&
      other.author == author &&
      other.title == title &&
      other.description == description &&
      other.url == url &&
      other.urlToImage == urlToImage &&
      other.content == content &&
      other.publishedAt == publishedAt;
  }

  @override
  int get hashCode {
    return author.hashCode ^
      title.hashCode ^
      description.hashCode ^
      url.hashCode ^
      urlToImage.hashCode ^
      content.hashCode ^
      publishedAt.hashCode;
  }
}
