import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:test_1/viewmodels/blog_viewmodel.dart';

class BlogDetailScreen extends StatelessWidget {
  final String blogId;

  const BlogDetailScreen({super.key, required this.blogId});

  @override
  Widget build(BuildContext context) {
    final blog = context.read<BlogViewModel>().getBlogById(blogId);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 35),
          onPressed: () => context.go('/blog'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/girl.png',
                      width: double.infinity,
                      height: 230,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 350,
                  child: CircleAvatar(
                    child: Image.asset('assets/images/saved.png', height: 28),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('  By', style: TextStyle(color: Colors.grey[700])),
                      Text(
                        ' ${blog.author}',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    blog.title,
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),
                  Text(
                    blog.content,
                    style: const TextStyle(height: 1.5, fontSize: 18),
                  ),
                  const SizedBox(height: 40),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(35),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'assets/images/thunder.png',
                            height: 25,
                          ),
                        ),

                        Text('Read Complete Story'),
                        SizedBox(width: 20),
                        Text(
                          'Buy Premium Plan \$20/Yr',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.close, size: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
