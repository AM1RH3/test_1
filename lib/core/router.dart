import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_1/views/blog_list_screen.dart';
import 'package:test_1/views/blog_detail_screen.dart';
import 'package:test_1/widgets/buttom_nav_widget.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const BlogListScreen()),
    GoRoute(
      path: '/blog/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return BlogDetailScreen(blogId: id);
      },
    ),
  ],
);
