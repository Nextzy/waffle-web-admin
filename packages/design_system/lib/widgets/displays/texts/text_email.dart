import 'package:design_system/lib.dart';

class AppEmailText extends AppStatelessWidget {
  const AppEmailText(
    this.email, {
    super.key,
    this.textAlign,
    this.style,
    this.softWrap,
    this.overflow,
    this.maxLines,
  });

  final String? email;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: buildTextSpans(email),
      ),
      textAlign: textAlign ?? TextAlign.start,
      overflow: overflow ?? TextOverflow.clip,
      softWrap: softWrap ?? true,
      maxLines: maxLines,
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

    textSpans
      ..add(TextSpan(
          text: splitEmail[0],
          style: style?.copyWith(fontWeight: FontWeight.w600)))
      ..add(TextSpan(text: '@', style: style))
      ..add(TextSpan(text: splitEmail[1], style: style));

    return textSpans;
  }
}
