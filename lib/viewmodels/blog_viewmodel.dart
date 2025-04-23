import 'package:flutter/material.dart';
import 'package:test_1/models/blog_models.dart';

class BlogViewModel extends ChangeNotifier {
  final List<Blog> _blogs = [
    Blog(
      id: '1',
      title: 'How to become  master in color pallette ?',
      author: 'Kelly Peter',
      date: '3 Feb',
      imageUrl: 'assets/images/blog1.jpg',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt \n \n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n Duis aute irure dolor in \n \n reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
      views: 32000,
      likes: 10000,
      readTime: 10,
    ),
    Blog(
      id: '2',
      title: 'How to become  master ',
      author: 'Kelly s',
      date: '10 Sep',
      imageUrl: 'assets/images/blog1.jpg',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt \n \n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n Duis aute irure dolor in \n \n reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
      views: 1502,
      likes: 540,
      readTime: 5,
    ),
    Blog(
      id: '3',
      title: 'How to  master adipiscing elit',
      author: 'Kelly s',
      date: '15 Jun',
      imageUrl: 'assets/images/blog1.jpg',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt \n \n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n Duis aute irure dolor in \n \n reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
      views: 465,
      likes: 188,
      readTime: 45,
    ),
    Blog(
      id: '4',
      title: 'adipiscing elit sed do eiusm',
      author: 'Kelly s',
      date: '17 Apr',
      imageUrl: 'assets/images/blog1.jpg',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt \n \n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n Duis aute irure dolor in \n \n reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
      views: 786,
      likes: 345,
      readTime: 45,
    ),
  ];

  List<Blog> get blogs => _blogs;

  Blog getBlogById(String id) {
    return _blogs.firstWhere((blog) => blog.id == id);
  }
}
