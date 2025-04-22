import 'package:design_system/lib.dart';

class AppSelectableText extends AppStatelessWidget {
  const AppSelectableText(
    this.data, {
    super.key,
    this.textAlign,
    this.style,
    this.maxLines,
  });

  final String? data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      data ?? '',
      key: key,
      textAlign: textAlign,
      style: style,
      maxLines: maxLines,
    );
  }
}
