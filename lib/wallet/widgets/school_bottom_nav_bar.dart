import 'package:flutter/material.dart';

class SchoolBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const SchoolBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,

      onTap: onItemTapped,

      type: BottomNavigationBarType.fixed,

      backgroundColor: Colors.white,

      selectedItemColor: const Color(0xFF0E216C),

      unselectedItemColor: const Color(0xFF838C91),

      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 11,
      ),

      unselectedLabelStyle: const TextStyle(
        fontSize: 11,
      ),

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),

          activeIcon: Icon(Icons.calendar_month),

          label: 'الحجوزات',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.info_outline),

          activeIcon: Icon(Icons.info),

          label: 'من نحن',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),

          activeIcon: Icon(Icons.account_balance_wallet),

          label: 'المحفظة',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.groups_outlined),

          activeIcon: Icon(Icons.groups),

          label: 'المدربون',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),

          activeIcon: Icon(Icons.more_horiz),

          label: 'المزيد',
        ),
      ],
    );
  }
}