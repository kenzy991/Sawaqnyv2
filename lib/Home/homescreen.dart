import 'package:flutter/material.dart';

// استيراد الـ Widgets المنفصلة من مجلد home_widgets
import 'home_widgets/appbar.dart';
import 'home_widgets/categoriesgrid.dart';
import 'home_widgets/filterlist.dart';
import 'home_widgets/promobanner.dart';
import 'home_widgets/searchbar.dart';
import 'home_widgets/sectionheader.dart';
import 'home_widgets/trainercard.dart';
import 'home_widgets/schoolslist.dart';
import 'Search/searchscreen.dart';
import '../checkout/checkout_screen.dart'; 

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF), // الأبيض كخلفية رئيسية عامة للشاشة
        appBar: const HomeAppBar(),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. شريط البحث المربوط مع Navigation لشاشة البحث
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: HomeSearchBar(
                        readOnly: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SearchScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 12),

                    // 2. أزرار الفلاتر
                    const FilterChipsList(),
                    const SizedBox(height: 16),

                    // 3. البانر الإعلاني
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: PromoBanner(),
                    ),
                    const SizedBox(height: 20),

                    // 4. الأقسام الرئيسية
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: CategoriesSection(),
                    ),
                    const SizedBox(height: 24),

                    // 5. قسم المدربين (مربوط الآن بشاشة الدفع)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SectionHeader(
                        title: 'مدربون بالقرب منك',
                        onSeeAll: () {},
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TrainerCard(
                        onBookTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CheckoutScreen(), // نقله لشاشة الدفع مباشرة
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),

                    // 6. قسم مدارس القيادة
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SectionHeader(
                        title: 'أفضل مدارس القيادة',
                        onSeeAll: () {},
                      ),
                    ),
                    const SizedBox(height: 12),

                    // قائمة مدارس القيادة الأفقية
                    const SchoolsList(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}