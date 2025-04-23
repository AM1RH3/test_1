import 'package:flutter/material.dart';
import 'package:test_1/models/blog_models.dart';
import 'package:go_router/go_router.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;

  const BlogCard({required this.blog});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(blog.imageUrl),
      title: Text(blog.title),
      subtitle: Text('${blog.readTime} Mins Read'),
      onTap: () {
        context.go('/blog/${blog.id}');
      },
    );
  }
}
