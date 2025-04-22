import 'package:design_system/lib.dart';

class AppEmailSelectableText extends AppStatelessWidget {
  const AppEmailSelectableText(this.email, {
    super.key,
    this.textAlign,
    this.style,
    this.maxLines,
    this.focusNode,
  });

  final String? email;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
    // return RichText(
       TextSpan(
        children: buildTextSpans(email),
      ),
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      // focusNode: focusNode,
    );
  }

  List<TextSpan> buildTextSpans(String? email) {
    List<TextSpan> textSpans = [];
    if (email.isNullOrBlank) {
      return textSpans..add(TextSpan(text: '', style: style));
    }
    if (!email!.contains('@')) {
      return textSpans..add(TextSpan(text: email, style: style));
    }

    final splitEmail = email.split('@');

    textSpans..add(TextSpan(
        text: splitEmail[0],
        style: style?.copyWith(fontWeight: FontWeight.w600)))..add(
        TextSpan(text: '@', style: style))..add(
        TextSpan(text: splitEmail[1], style: style));

    return textSpans;
  }
}
