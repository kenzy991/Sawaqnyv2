import 'package:flutter/material.dart';
// هنا هتعملي import لفايلات التيم كله (هنفترض أسماء الكلاسات)
import 'Home/homescreen.dart'; // سكرين 4 (كنزي)
import 'my_bookings_screen.dart'; // سكرين 11 (كنزي)
import 'schedule_screen.dart'; // شاشة جدولي 
import 'knowledge_hub_screen.dart'; // سكرين 15 (فريدة)
import 'profile_screen.dart'; // سكرين 7 (حسابي)

class MainNavigationWrapper extends StatefulWidget {
  const MainNavigationWrapper({super.key});

  @override
  State<MainNavigationWrapper> createState() => _MainNavigationWrapperState();
}

class _MainNavigationWrapperState extends State<MainNavigationWrapper> {
  int _currentIndex = 0; 

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      const Homescreen(),         // 0. الرئيسية (سكرين 4)
      const MyBookingsScreen(),   // 1. حجوزاتي (سكرين 11)
      const Center(child: Text('جدولي')), // 2. جدولي (مؤقتاً لحد ما تخلص)
      const KnowledgeHubScreen(), // 3. من نحن (سكرين 15)
      const ProfileScreen(),      // 4. حسابي (سكرين 7)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF0047BA),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            activeIcon: Icon(Icons.calendar_month),
            label: 'حجوزاتي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            activeIcon: Icon(Icons.calendar_today),
            label: 'جدولي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            activeIcon: Icon(Icons.menu_book),
            label: 'من نحن',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}