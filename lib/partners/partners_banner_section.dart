import 'package:flutter/material.dart';

class PartnersBannerSection extends StatelessWidget {
  const PartnersBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF0047BA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const Text(
            'هل تملك مدرسة أو مركز تدريب قيادة؟',
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'انضم إلى شبكة الشركاء المعتمدين واستقبل متدربين جدد يومياً عبر تطبيقنا.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 12, height: 1.5),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () {},
              child: const Text(
                'تقديم طلب تقديم شراكة',
                style: TextStyle(color: Color(0xFF0047BA), fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}