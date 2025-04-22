import 'package:design_system/lib.dart';

class AppComments extends AppStatelessWidget {
  const AppComments({
    super.key,
    required this.children,
  });

  final List<AppComment> children;

  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      child: ColumnLayout(
        crossAxisAlignment: CrossAxisAlignment.start,
        gap: 16,
        children: [
          for (final child in children)
            _buildComment(context, child.avatar, child.name, child.time,
                child.text, child.reaction, child.children)
        ],
      ),
    );
  }

  Widget _buildComment(
      BuildContext context,
      AppCircleAvatar avatar,
      String name,
      String time,
      String text,
      int reaction,
      List<AppComment>? children) {
    return RowLayout(
      crossAxisAlignment: CrossAxisAlignment.start,
      gap: 12,
      children: [
        avatar,
        Expanded(
          child: ColumnLayout(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(name,
                  style: TextStyle(
                    color: context.theme.color.textPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )),
              Gap(6),
              AppText(time,
                  style: TextStyle(
                    color: context.theme.color.textSecondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  )),
              Gap(8),
              AppText(text,
                  style: TextStyle(
                    color: context.theme.color.textPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              Gap(8),
              Row(
                children: [
                  AppButton(
                    style: AppButtonStyle.text,
                    size: WidgetSize.sm,
                    width: 70,
                    startIcon: Assets.icon.infoRegular.keyName,
                    text: reaction.toString(),
                  ),
                  AppButton(
                    style: AppButtonStyle.text,
                    size: WidgetSize.sm,
                    width: 54,
                    text: 'Reply',
                  ),
                ],
              ),
              if (children.isNotEmptyOrNull) Gap(16),
              if (children.isNotEmptyOrNull)
                ColumnLayout(gap: 16, children: [
                  for (final child in children!)
                    _buildComment(context, child.avatar, child.name, child.time,
                        child.text, child.reaction, child.children)
                ])
            ],
          ),
        )
      ],
    );
  }
}
