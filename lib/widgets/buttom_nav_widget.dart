import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      decoration: BoxDecoration(),
      child: ClipRRect(
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: _buildNavItem(label: 'Latest', isActive: currentIndex == 0),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _buildNavItem(label: 'Map', isActive: currentIndex == 1),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: _buildNavItem(
                label: 'Premium',
                isActive: currentIndex == 2,
              ),
              label: '',

            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({required String label, required bool isActive}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 45),
        Column(
          children: [
            const SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(
                fontSize: 17,
                color: isActive ? Colors.black : Colors.grey,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            const SizedBox(height: 5),
            Container(width: isActive ? 30 : 0, height: 3, color: Colors.blue),
          ],
        ),
      ],
    );
  }
}

