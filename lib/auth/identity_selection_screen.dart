import 'package:flutter/material.dart';

// TODO: قم باستيراد ملفات الشاشات هنا
 import 'student_signup_screens.dart';

import 'school_signup_screen.dart';

class IdentitySelectionScreen extends StatelessWidget {
  const IdentitySelectionScreen({Key? key}) : super(key: key);

  // Brand Palette Constants
  static const Color primaryNavy = Color(0xFF0E216C);
  static const Color accentOrange = Color(0xFFFE8511);
  static const Color neutralWhite = Color(0xFFFFFFFF);
  static const Color neutralGray = Color(0xFF838C91);
  static const Color neutralBlack = Color(0xFF000000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutralWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              
              // Screen Title
              const Text(
                'كيف تحب أن تبدأ رحلتك؟',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: neutralBlack,
                ),
              ),

              const SizedBox(height: 32),

              // Both Options Side by Side
              Expanded(
                child: Row(
                  children: [
                    // --- 1. Driving School Option ---
                    Expanded(
                      child: Column(
                        children: [
                          // Main Card
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: neutralWhite,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: neutralGray.withOpacity(0.2),
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.03),
                                    blurRadius: 10,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Title
                                  const Text(
                                    'أنا مدرسة تدريب',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: neutralBlack,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // Icon Container
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEBF1FF), // Soft Navy Tint
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: const Icon(
                                      Icons.apartment_rounded,
                                      size: 48,
                                      color: primaryNavy,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // Description Text
                                  const Text(
                                    'إدارة المتدربين والمدربين، وتوسيع نطاق مدرستك.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      color: neutralGray,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          // School Action Button (Outline Navy)
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: OutlinedButton(
                              onPressed: () {
                                // ⬇️ التوجيه لفورم المدرسة ⬇️
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SchoolAuthScreen(), // غيّري اسم الكلاس هنا
                                  ),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: primaryNavy, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'استمرار مدرسة',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: primaryNavy,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 16),

                    // --- 2. Student Option ---
                    Expanded(
                      child: Column(
                        children: [
                          // Main Card
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: neutralWhite,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: neutralGray.withOpacity(0.2),
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.03),
                                    blurRadius: 10,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Title
                                  const Text(
                                    'أنا متدرب',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: neutralBlack,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // Icon Container
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFF3E8), // Soft Orange Tint
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: const Icon(
                                      Icons.school_rounded,
                                      size: 48,
                                      color: accentOrange,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // Description Text
                                  const Text(
                                    'ابحث عن أفضل الدورات والمدارس، وابدأ التعلم الآن.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      color: neutralGray,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          // Student Action Button (Solid CTA Orange)
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {
                                // ⬇️ التوجيه لفورم الطالب ⬇️
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AuthScreen(), // غيّري اسم الكلاس هنا
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: accentOrange,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'استمرار متدرب',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: neutralWhite,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

// ⚠️ كلاسات مؤقتة لمنع ظهور خطأ أثناء التجميع (حذفيها عند إضافة شاشاتك الحقيقية)
class StudentFormScreen extends StatelessWidget {
  const StudentFormScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Student Form')));
}

class SchoolFormScreen extends StatelessWidget {
  const SchoolFormScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('School Form')));
}