import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:test_1/widgets/buttom_nav_widget.dart';

class ScaffoldWithBottomNav extends StatefulWidget {
  final Widget child;

  const ScaffoldWithBottomNav({super.key, required this.child});

  @override
  State<ScaffoldWithBottomNav> createState() => _ScaffoldWithBottomNavState();
}

class _ScaffoldWithBottomNavState extends State<ScaffoldWithBottomNav> {
  final List<String> _routes = ['/blog', '/map'];

  int _getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/map')) return 1;

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _getSelectedIndex(context);

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: Stack(
        fit: StackFit.passthrough,
        children: [
          CustomBottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              if (index != selectedIndex) {
                context.go(_routes[index]);
              }
            },
          ),
          if (selectedIndex == 2)
            Positioned(
              left: 390,
              top: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber[500],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text('  Pro  '),
              ),
            ),
        ],
      ),
    );
  }
}
