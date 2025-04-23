import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/router.dart';
import 'viewmodels/blog_viewmodel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => BlogViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Blog App',
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}
