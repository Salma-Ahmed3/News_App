class ArticleModle {
  final String? image; // عشان في api بعض وابط الصور بترجع ب نل
  final String title;
  final String? subtitle;

  ArticleModle(
      {required this.image, required this.subtitle, required this.title});

  factory ArticleModle.fromJson(json) {
    return ArticleModle(
      image: json['urlToImage'],
      subtitle: json['description'],
      title: json['title'],
    );
  }
}
