import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF), // الأبيض (الخلفية الرئيسية للموقع/التطبيق)
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF838C91).withOpacity(0.3), width: 1.5), // الرمادي المعتمد للحدود
            ),
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFF0E216C), // خلفية كحلي غامق أساسي (60%)
              child: Icon(Icons.person, color: Color(0xFFFFFFFF)), // أبيض
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Row(
                  children: [
                    Text(
                      'مرحباً، أحمد',
                      style: TextStyle(
                        color: Color(0xFF000000), // الأسود المعتمد للعناوين الرئيسية (Readability)
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text('👋', style: TextStyle(fontSize: 13)),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 13, color: Color(0xFF0E216C)), // الكحلي الغامق الأساسي
                    SizedBox(width: 2),
                    Text(
                      'القاهرة، مدينة نصر',
                      style: TextStyle(
                        color: Color(0xFF838C91), // الرمادي المعتمد للنصوص الثانوية والتفاصيل الفرعية
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF838C91).withOpacity(0.1), // خلفية رمادية خفيفة للأيقونة غير النشطة
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: Color(0xFF0E216C), // الكحلي الغامق الأساسي (60%)
                size: 22,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}