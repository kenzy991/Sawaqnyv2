import 'package:flutter/material.dart';

class PartnersHeaderSection extends StatelessWidget {
  const PartnersHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Column(
            children: [
              Text(
                'شبكة مراكز وأكاديميات القيادة',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                'نثق بأفضل مدارس ومراكز تدريب القيادة المعتمدة في مصر',
                style: TextStyle(color: Colors.grey, fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 45,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0047BA),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            icon: const Icon(Icons.add_business_outlined, color: Colors.white, size: 18),
            label: const Text(
              'انضمام مدرسة / مركز تدريب',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}