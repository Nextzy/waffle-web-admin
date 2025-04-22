import 'package:design_system/lib.dart';

class AppPopover extends AppStatelessWidget {
  const AppPopover({
    super.key,
    required this.text,
    required this.child,
    this.direction = PopoverDirection.bottom,
    this.width = 200,
    this.height = 100,
  });

  final String text;
  final Widget child;
  final PopoverDirection direction;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AppButton(
        text: text,
        onPress: () => {
              showPopover(
                context: context,
                bodyBuilder: (context) => child,
                direction: direction,
                width: width,
                height: height,
                arrowWidth: 22,
                arrowHeight: 12,
              )
            });
  }
}
