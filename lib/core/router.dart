import 'package:go_router/go_router.dart';
import 'package:test_1/views/blog_list_screen.dart';
import 'package:test_1/views/blog_detail_screen.dart';
import 'package:test_1/views/buttom_nav_view.dart';
import 'package:test_1/views/map_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/blog',
  routes: [
    ShellRoute(
      builder: (context, state, child) => ScaffoldWithBottomNav(child: child),
      routes: [
        GoRoute(
          path: '/blog',
          builder: (context, state) => const BlogListScreen(),
        ),
        GoRoute(path: '/map', builder: (context, state) => const MapScreen()),
        GoRoute(
          path: '/blog/:id',
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            return BlogDetailScreen(blogId: id);
          },
        ),
      ],
    ),
  ],
);
