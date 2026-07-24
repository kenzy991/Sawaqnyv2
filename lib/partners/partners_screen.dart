import 'package:flutter/material.dart';
import 'partners_header_section.dart';
import 'partners_stats_section.dart';
import 'partner_card_item.dart';
import 'partners_banner_section.dart';

class PartnersScreen extends StatelessWidget {
  const PartnersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'شركائنا في التدريب',
          style: TextStyle(color: Color(0xFF0047BA), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. قسم الهيدر والزرار الرئيسي
            const PartnersHeaderSection(),
            const SizedBox(height: 24),

            // 2. قسم الإحصائيات
            const PartnersStatsSection(),
            const SizedBox(height: 24),

            // 3. قائمة الشركاء المعتمدين
            const Text(
              'مراكز وأكاديميات التدريب المعتمدة',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            const PartnerCardItem(
              name: 'مدرسة الأهرام لتعليم القيادة',
              brief: 'توفير مضامير تدريب مغلقة وسيارات مجهزة بدواسات أمان مزدوجة للتدريب العملي.',
              badges: ['مضمار مجهز', 'سيارات مزدوجة التحكم'],
              expiry: 'عقد دائم',
              fullDetails: 'تتيح هذه الشراكة لمتدربي التطبيق استخدام مضامير التدريب المغلقة والمعتمدة الخاصة بمدرسة الأهرام في الجيزة و6 أكتوبر، مما يوفر بيئة آمنة تماماً للمبتدئين للتدريب على الركنات والتحكم في السيارة قبل النزول للشوارع الرئيسية والزحام.',
            ),
            const SizedBox(height: 16),

            const PartnerCardItem(
              name: 'أكاديمية مصر للقيادة الآمنة',
              brief: 'حصص تدريبية متطورة باستخدام أجهزة المحاكاة (Simulator) والقيادة الدفاعية.',
              badges: ['أجهزة محاكاة 3D', 'شهادات معتمدة'],
              expiry: 'حتى 2027',
              fullDetails: 'اتفاقية حصرية يوفر بموجبها مركز المحاكاة بالأكاديمية حصصاً تدريبية باستخدام أجهزة Simulator ثلاثية الأبعاد لتعليم المتدربين كيفية التعامل مع الطقس السيئ، والزحام المروري الشديد، وتفادي الأخطار قبل بدء الجلسات العملية على الطريق.',
            ),
            const SizedBox(height: 16),

            const PartnerCardItem(
              name: 'مركز أكتوبر لاختبارات القيادة',
              brief: 'إجراء اختبارات محاكاة لاختبار المرور الرسمي للتأكد من جاهزية المتدرب للرخصة.',
              badges: ['تأهيل لرخصة القيادة', 'تقييم شامل'],
              expiry: 'حتى 2026',
              fullDetails: 'شراكة تتيح للمتدربين خوض تجربة اختبار قيادة مماثلة تماماً لاختبار إدارة المرور الرسمية. يتم تقييم المتدرب عبر مدربين خبراء وتحديد نقاط القوة والضعف بدقة لضمان اجتياز اختبار استخراج الرخصة من المرة الأولى.',
            ),
            const SizedBox(height: 16),

            const PartnerCardItem(
              name: 'المؤسسة المصرية للسلامة المرورية',
              brief: 'إعداد وتحديث المنهج النظري وشرح إشارات وقوانين المرور المصرية.',
              badges: ['منهج نظري معتمد', 'قوانين المرور'],
              expiry: 'حتى 2028',
              fullDetails: 'شراكة تعليمية لإعداد كافة المواد العلمية والفيديوهات المتاحة داخل قسم التعلم بالتطبيق، وتحديثها باستمرار وفقاً لأحدث التعديلات في قانون المرور المصري والإشارات الرسمية وتكتيكات القيادة الآمنة.',
            ),
            const SizedBox(height: 24),

            // 4. البانر الأزرق السفلي
            const PartnersBannerSection(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}