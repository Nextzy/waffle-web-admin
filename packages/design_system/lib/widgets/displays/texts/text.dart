import 'package:design_system/lib.dart';

enum TextEnum {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  titleLg,
  titleBase,
  bodyLg,
  bodyBase,
  bodySm,
  bodyXl,
  buttonLg,
  buttonBase,
  buttonSm,
  buttonXl,
  captionBase,
  captionSm,
}

class AppText extends AppStatelessWidget {
  const AppText(
    this.data, {
    super.key,
    this.strokeWidth = 0.0,
    this.strokeColor,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : textSpan = null;

  final StrutStyle? strutStyle;
  final Locale? locale;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const AppText.rich(
    this.textSpan, {
    super.key,
    this.strokeWidth = 0.0,
    this.strokeColor,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : data = null;

  final TextSpan? textSpan;
  final String? data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? softWrap;
  final TextDirection? textDirection;
  final TextScaler? textScaler;

  final double strokeWidth;
  final Color? strokeColor;

  @override
  Widget build(BuildContext context) {
    if (strokeWidth <= 0.0 && textSpan == null) {
      return buildText();
    } else if (strokeWidth > 0.0 && textSpan == null) {
      return Stack(
        children: [
          buildText(
            style: (style ?? const TextStyle()).merge(
              TextStyle(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = strokeWidth
                  ..color = strokeColor ?? Colors.black,
              ),
            ),
          ),
          buildText(),
        ],
      );
    } else if (strokeWidth <= 0.0 && textSpan != null) {
      return buildTextRich();
    } else if (strokeWidth > 0.0 && textSpan != null) {
      return Stack(
        children: [
          buildTextRich(
            textSpan: TextSpan(
              text: textSpan?.text,
              children: textSpan!.children
                  ?.map(
                    (span) => TextSpan(
                      text: (span as TextSpan?)?.text,
                      style: (span.style ?? const TextStyle()).merge(
                        TextStyle(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = strokeWidth
                            ..color = strokeColor ?? Colors.black,
                        ),
                      ),
                      recognizer: (span as TextSpan?)?.recognizer,
                      onEnter: (span as TextSpan?)?.onEnter,
                      onExit: (span as TextSpan?)?.onExit,
                      semanticsLabel: (span as TextSpan?)?.semanticsLabel,
                      locale: (span as TextSpan?)?.locale,
                      spellOut: (span as TextSpan?)?.spellOut,
                    ),
                  )
                  .toList(),
              style: textSpan?.style,
              recognizer: textSpan?.recognizer,
              onEnter: textSpan?.onEnter,
              onExit: textSpan?.onExit,
              semanticsLabel: textSpan?.semanticsLabel,
              locale: textSpan?.locale,
              spellOut: textSpan?.spellOut,
            ),
          ),
          buildTextRich(),
        ],
      );
    } else {
      throw UnimplementedError();
    }
  }

  Text buildTextRich({TextSpan? textSpan, TextStyle? style}) {
    return Text.rich(
      textSpan ?? this.textSpan!,
      style: style ?? this.style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  Widget buildText({TextStyle? style}) {
    return Text(
      data ?? '',
      style: style ?? this.style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }
}

class AppRichText extends AppStatelessWidget {
  const AppRichText({
    super.key,
    this.style,
    this.textAlign = TextAlign.start,
    this.softWrap = true,
    this.overflow = TextOverflow.clip,
    this.maxLines,
    required this.spans,
  });

  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int? maxLines;
  final bool softWrap;
  final List<TextSpan> spans;

  @override
  Widget build(BuildContext context) {
    return RichText(
      key: key,
      textAlign: textAlign,
      overflow: overflow,
      softWrap: softWrap,
      maxLines: maxLines,
      text: TextSpan(
        style: style,
        children: spans,
      ),
    );
  }
}

class AppOpenLinkText extends AppStatelessWidget {
  const AppOpenLinkText(
    this.data, {
    super.key,
    this.textAlign,
    this.style,
    this.softWrap,
    this.overflow,
    this.maxLines,
  });

  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: data,
        recognizer: TapGestureRecognizer()
          ..onTap =
              () => AppUrlScheme.launchExternalApp(Uri.parse(getLink(data))),
      ),
      key: key,
      textAlign: textAlign,
      overflow: overflow,
      softWrap: softWrap,
      style: style,
      maxLines: maxLines,
    );
  }

  String getLink(String data) {
    if (data.isUrl) return data;

    return 'https://$data';
  }
}
