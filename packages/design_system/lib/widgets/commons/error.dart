import 'package:design_system/lib.dart';

class AppErrorWidget extends AppStatelessWidget {
  const AppErrorWidget({
    super.key,
    super.state = FullWidgetState.normal,
    required this.title,
    required this.message,
    this.padding,
  });

  final String? title;
  final String message;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);

    return ContainerLayout(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: theme.space.md,
            vertical: 32,
          ),
      child: ColumnLayout(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 24,
        children: [
          Assets.illustration.error.svg(),
          ColumnLayout(
            crossAxisAlignment: CrossAxisAlignment.center,
            gap: 4,
            children: [
              AppText(
                title,
                style: AppTextStyleBuilder.ui.s16.semiBold
                    .color(theme.color.textPrimary)
                    .build(context),
              ),
              AppText(
                message,
                style: AppTextStyleBuilder.ui.s16
                    .color(theme.color.textSecondary)
                    .build(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
