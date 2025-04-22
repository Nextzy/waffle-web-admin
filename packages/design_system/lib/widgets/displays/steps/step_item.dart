import 'package:design_system/lib.dart';

class AppStepItem extends AppStatelessWidget {
  const AppStepItem(
      {super.key,
      super.size = WidgetSize.md,
      required this.title,
      this.description,
      this.icon});

  final String title;
  final String? description;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title,
          style: TextStyle(
              color: context.theme.color.textPrimary,
              fontSize: fontSize,
              fontWeight: FontWeight.w600),
        ),
        if (description.isNotNullOrBlank) Gap(6),
        AppText(
          description,
          style: TextStyle(
            color: context.theme.color.textPrimary,
            fontSize: size == WidgetSize.sm ? 12 : 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  double get fontSize => switch (size) {
        WidgetSize.xxs => 12,
        WidgetSize.xs => 12,
        WidgetSize.sm => 12,
        WidgetSize.md => 14,
        WidgetSize.lg => 18,
        WidgetSize.xl => 18,
        WidgetSize.xxl => 18,
      };
}
