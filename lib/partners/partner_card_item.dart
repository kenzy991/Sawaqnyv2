import 'package:flutter/material.dart';

class PartnerCardItem extends StatelessWidget {
  final String name;
  final String brief;
  final List<String> badges;
  final String expiry;
  final String fullDetails;

  const PartnerCardItem({
    super.key,
    required this.name,
    required this.brief,
    required this.badges,
    required this.expiry,
    required this.fullDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.time_to_leave, color: Color(0xFF0047BA)),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(brief, style: const TextStyle(fontSize: 13, color: Colors.black87, height: 1.5)),
          const SizedBox(height: 12),
          Row(
            children: badges.map((badge) => Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(4)),
                child: Text(badge, style: const TextStyle(color: Color(0xFF0047BA), fontSize: 11, fontWeight: FontWeight.bold)),
              ),
            )).toList(),
          ),
          const SizedBox(height: 16),
          const Divider(height: 1),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('حالة الشراكة', style: TextStyle(fontSize: 11, color: Colors.grey)),
                  Text(expiry, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.green)),
                ],
              ),
              GestureDetector(
                onTap: () {
                  _showDetailsBottomSheet(context, name, fullDetails);
                },
                child: const Row(
                  children: [
                    Text('التفاصيل', style: TextStyle(color: Color(0xFF0047BA), fontSize: 13, fontWeight: FontWeight.bold)),
                    Icon(Icons.keyboard_arrow_left, color: Color(0xFF0047BA), size: 16),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showDetailsBottomSheet(BuildContext context, String partnerName, String details) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'تفاصيل الشراكة مع $partnerName',
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xFF0047BA)),
              ),
              const SizedBox(height: 16),
              Text(
                details,
                style: const TextStyle(fontSize: 14, color: Colors.black87, height: 1.8),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0047BA),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text('إغلاق', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}