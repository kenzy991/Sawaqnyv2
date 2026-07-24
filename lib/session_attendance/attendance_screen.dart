import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'تسجيل الحضور والانصراف',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSessionInfoCard(),
            const SizedBox(height: 16),
            _buildArrivalCard(),
            const SizedBox(height: 16),
            _buildDepartureCard(),
            const SizedBox(height: 16),
            _buildSummaryCard(),
            const SizedBox(height: 24),
            
            // رسالة التنبيه اللي تحت
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Icon(Icons.info_outline, color: Color(0xFF0047BA)),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'يرجى التأكد من تسجيل الوصول والانصراف في الوقت المناسب. هذا يساعدنا على تتبع حضورك بدقة.',
                      style: TextStyle(color: Color(0xFF0047BA), fontSize: 12, height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 1. كارت تفاصيل الجلسة
  Widget _buildSessionInfoCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          // خريطة مصغرة
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 80,
              height: 100,
              color: Colors.grey.shade200,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: Color(0xFF0047BA)),
                  SizedBox(height: 4),
                  Text('الخريطة', style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          // التفاصيل (عدلناها لتدريب قيادة)
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('مركز تدريب القيادة', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    Icon(Icons.business, color: Colors.purple, size: 18),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text('اليوم، 23 يوليو 2026', style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text('3:00 م - 5:00 م', style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.directions_car, size: 14, color: Colors.grey), // أيقونة عربية
                    SizedBox(width: 4),
                    Text('تدريب عملي - أوتوماتيك', style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 2. كارت تسجيل الوصول (الأخضر)
  Widget _buildArrivalCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green.shade200),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text('تسجيل الوصول', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.green.shade50,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('2:58', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.green)),
                    SizedBox(width: 16),
                    Icon(Icons.check_circle, color: Colors.green, size: 36),
                  ],
                ),
                const Text('23 يوليو 2026', style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.green.shade700, size: 16),
                    const SizedBox(width: 4),
                    Text('تم تسجيل الموقع بنجاح', style: TextStyle(color: Colors.green.shade700, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(11)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('تسجيل الوصول', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(width: 8),
                Icon(Icons.check_circle_outline, color: Colors.white, size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 3. كارت تسجيل الانصراف (الأحمر)
  Widget _buildDepartureCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.shade200),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text('تسجيل الانصراف', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.red.shade50,
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('--:--', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.red)),
                    SizedBox(width: 16),
                    Icon(Icons.access_time, color: Colors.red, size: 36),
                  ],
                ),
                SizedBox(height: 8),
                Text('اضغط على زر تسجيل الانصراف عند انتهاء الحصة', style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // ممكن هنا تضيفي كود يغير الوقت لما يدوس انصراف
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Color(0xFFD32F2F), // أحمر
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(11)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('تسجيل الانصراف', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                  Icon(Icons.stop_circle_outlined, color: Colors.white, size: 18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 4. كارت ملخص الجلسة
  Widget _buildSummaryCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('ملخص الجلسة', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 8),
              Icon(Icons.assignment_outlined, color: Colors.purple),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _summaryItem('وقت الوصول', '2:58 م', Colors.green),
              _summaryItem('وقت الانصراف', '-', Colors.black),
              _summaryItem('مدة الجلسة', '-', Colors.black),
              Column(
                children: [
                  const Text('الحالة', style: TextStyle(fontSize: 12, color: Colors.grey)),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text('لم تكتمل بعد', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _summaryItem(String title, String value, Color valueColor) {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        const SizedBox(height: 4),
        Text(value, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: valueColor)),
      ],
    );
  }
}