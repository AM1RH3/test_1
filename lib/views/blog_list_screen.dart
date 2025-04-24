import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:test_1/viewmodels/blog_viewmodel.dart';
import 'package:test_1/widgets/buttom_nav_widget.dart';

class BlogListScreen extends StatefulWidget {
  const BlogListScreen({super.key});

  @override
  State<BlogListScreen> createState() => _BlogListScreenState();
}

class _BlogListScreenState extends State<BlogListScreen> {
  @override
  Widget build(BuildContext context) {
    final blogs = context.watch<BlogViewModel>().blogs;
    int _selectedIndex = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/menu.png'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/girl.png'),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              const Text(
                textDirection: TextDirection.rtl,
                'Blogs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Blogs',
                prefixIcon: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black87,
                ),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/images/setting.png', height: 10),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: blogs.length,

              padding: const EdgeInsets.symmetric(horizontal: 16),
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final blog = blogs[index];
                return GestureDetector(
                  onTap: () => context.go('/blog/${blog.id}'),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/images/girl.png',
                                width: 210,
                                height: 160,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      '  ${blog.date}  ',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${blog.readTime} Mins Read ',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                blog.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),

                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  Text('${blog.views}'),

                                  const SizedBox(width: 4),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 16,
                                    color: Colors.grey[600],
                                  ),
                                  const SizedBox(width: 12),

                                  Text('${blog.likes}'),
                                  const SizedBox(width: 4),
                                  Icon(
                                    Icons.message_outlined,
                                    size: 16,
                                    color: Colors.grey[600],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
