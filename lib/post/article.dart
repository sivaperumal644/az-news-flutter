class Articles{
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Articles({this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content});

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }

}