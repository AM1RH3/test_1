class Blog {
  final String id;
  final String title;
  final String author;
  final String date;
  final String imageUrl;
  final String content;
  final int views;
  final int likes;
  final int readTime;

  Blog({
    required this.id,
    required this.title,
    required this.author,
    required this.date,
    required this.imageUrl,
    required this.content,
    required this.views,
    required this.likes,
    required this.readTime,
  });
}
