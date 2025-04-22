import 'package:design_system/lib.dart';

enum AppDialogEvent {
  showFullLoadingLocked,
  dismissAll,
}

class AppLoadingDialog {
  static bool _isLoading = false;

  static bool get isLoading => _isLoading;

  static Future<void> showFullLoadingCancellable(
    BuildContext context, {
    String? title,
  }) =>
      _showFullLoadingDialog(context, title: title, lock: false);

  static Future<void> showFullLoadingLocked(
    BuildContext context, {
    String? title,
  }) =>
      _showFullLoadingDialog(context, title: title, lock: true);

  static Future<void> _showFullLoadingDialog(
    BuildContext context, {
    String? title,
    bool lock = false,
  }) async {
    if (isLoading) return;
    return await showDialog(
      context: context,
      useSafeArea: false,
      barrierDismissible: !lock,
      builder: (BuildContext context) {
        _isLoading = true;
        return PopScope(
          canPop: !lock,
          child: Dialog.fullscreen(
            backgroundColor: Colors.transparent,
            child: Stack(
              fit: StackFit.expand,
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(color: Colors.transparent),
                ),
                ColumnLayout(
                  backgroundColor: Colors.black.withValues(alpha: 0.2),
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  gap: 20,
                  children: [
                    LoadingAnimationWidget.threeArchedCircle(
                      color: Colors.white,
                      size: 56,
                    ),
                    AppText(
                      title,
                      style: AppTextStyleBuilder.ui.s16.medium
                          .color(Colors.white)
                          .build(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ).then((value) {
      _isLoading = false;
    });
  }

  static void dismissAll(BuildContext context) {
    Navigator.of(context).popUntil((route) {
      if (route is DialogRoute) {
        return false; // Pop the dialog
      } else if (route is RawDialogRoute) {
        return false; // Pop the dialog
      } else if (route is ModalBottomSheetRoute) {
        return false; // Pop the bottom sheet
      }
      return true;
    });
  }

  static bool checkDialogVisibility(BuildContext context) =>
      ModalRoute.of(context)?.isCurrent ?? false;
}
