class Articles{
  final String title;
  final String description;
  final String url;
  final String author;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Articles({this.title, this.description, this.url, this.author, this.urlToImage, this.publishedAt, this.content});

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      title: json['title'],
      description: json['description'],
      url: json['url'],
      author: json['author'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }

}