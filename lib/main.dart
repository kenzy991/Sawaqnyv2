import 'package:flutter/material.dart';
// السطر ده عشان يقرا الشاشة اللي إنتي عملتيها جوه فولدر checkout
import 'checkout/checkout_screen.dart'; 
import 'main_navigation_wrapper.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // السطر ده بيشيل علامة الـ Debug الحمرا من فوق
      title: 'sawany',
      theme: ThemeData(
        primaryColor: const Color(0xFF0047BA),
        scaffoldBackgroundColor: const Color(0xFFF8F9FB),
      ),
      // الجزء ده مهم جداً عشان يخلي اتجاه التطبيق كله عربي من اليمين للشمال
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      // هنا بنقوله أول شاشة تفتح هي شاشة الدفع بتاعتك
home: const MainNavigationWrapper(),    );
  }
}