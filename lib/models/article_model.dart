class ArticleModel {
  String author;
  String title;
  String description;
  String content;
  String url;
  String urlToImage;
  String publishedAt;

  ArticleModel(
      {this.author,
      this.title,
      this.content,
      this.url,
      this.description,
      this.urlToImage,
      this.publishedAt});
}
