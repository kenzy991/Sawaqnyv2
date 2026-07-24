import 'package:flutter/material.dart';
// 1. استيراد الشاشات 
import 'Home/homescreen.dart'; // سكرين 4 (الرئيسية)
import 'checkout/Booking/bookingsscreen.dart'; // سكرين 11 (حجوزاتي)
import 'more/knowledge_center_screen.dart'; // سكرين 15 (مركز المعرفة)
import 'profile/trainer/trainerscreen.dart';

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
    
    // 2. ربط الكلاسات
    _screens = [
      const Homescreen(), // 0. الرئيسية
      const BookingsScreen(), // 1. حجوزاتي
      const Center(child: Text('جدولي', style: TextStyle(fontSize: 18))), // 2. جدولي
      const KnowledgeCenterScreen(), // 3. من نحن (مربوطة بسكرين 15 هنا)
      const TrainerScreen(), // 4. حسابي
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
          backgroundColor: const Color(0xFFFFFFFF),
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
              // التعديل هنا: أيقونة دايرة جواها علامة التعجب/المعلومات
              icon: Icon(Icons.info_outline),
              activeIcon: Icon(Icons.info),
              label: 'من نحن',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'حسابي',
            ),
          ],
        ),
      ),
    );
  }
}