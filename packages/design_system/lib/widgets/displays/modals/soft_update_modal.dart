import 'package:design_system/lib.dart';

class AppSoftUpdateModal extends AppStatelessWidget {
  const AppSoftUpdateModal({
    super.key,
    this.onPrimaryPress,
    this.onSecondaryPress,
  });

  final VoidCallback? onPrimaryPress;
  final VoidCallback? onSecondaryPress;

  @override
  Widget build(BuildContext context) => AppModal(
        icon: Assets.logo.icon.keyName,
        title: Strings.common.title.softUpdate,
        description: Strings.common.message.softUpdate,
        buttonPrimaryText: Strings.common.button.update,
        buttonSecondaryText: Strings.common.button.later,
        onPrimaryPress: onPrimaryPress,
        onSecondaryPress: onSecondaryPress,
        contentAlign: AppModalContentAlign.center,
        actionAlign: AppModalActionAlign.center,
      );
}
