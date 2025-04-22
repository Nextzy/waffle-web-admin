import 'package:design_system/lib.dart';

part 'generated/icon.freezed.dart';

typedef AppIconWidgetBuilder = Widget Function(
    BuildContext context, double size);

typedef AppIconWidgetErrorBuilder = Widget Function(
    BuildContext context, double size, Object? error, StackTrace? stackTrace);

@freezed
abstract class AppIconTheme with _$AppIconTheme {
  const factory AppIconTheme({
    WidgetSize? size,
    bool? matchTextDirection,
    AssetBundle? bundle,
    String? package,
    double? customSize,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    bool? allowDrawingOutsideViewBox,
    AppIconWidgetBuilder? loadingBuilder,
    AppIconWidgetBuilder? placeholderBuilder,
    AppIconWidgetErrorBuilder? errorBuilder,
    String? semanticLabel,
    bool? excludeFromSemantics,
    SvgTheme? svgTheme,
    ColorFilter? colorFilter,
    Clip? clipBehavior,
    Color? color,
    BlendMode? colorBlendMode,
  }) = _AppIconTheme;
}

class AppIcon extends AppStatelessWidget {
  const AppIcon({
    super.key,
    required this.path,
    super.size,
    this.matchTextDirection = false,
    this.bundle,
    this.package,
    this.customSize,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.allowDrawingOutsideViewBox = false,
    this.loadingBuilder,
    this.placeholderBuilder,
    this.errorBuilder,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.svgTheme = const SvgTheme(),
    this.colorFilter,
    this.clipBehavior = Clip.hardEdge,
    @Deprecated('Use colorFilter instead.') this.color,
    @Deprecated('Use colorFilter instead.')
    this.colorBlendMode = BlendMode.srcIn,
    this.theme,
  });

  final String path;
  final bool matchTextDirection;
  final AssetBundle? bundle;
  final String? package;
  final double? customSize;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final bool allowDrawingOutsideViewBox;
  final AppIconWidgetBuilder? loadingBuilder;
  final AppIconWidgetBuilder? placeholderBuilder;
  final AppIconWidgetErrorBuilder? errorBuilder;
  final String? semanticLabel;
  final bool excludeFromSemantics;
  final SvgTheme svgTheme;
  final ColorFilter? colorFilter;
  final Clip clipBehavior;
  final Color? color;
  final BlendMode colorBlendMode;
  final AppIconTheme? theme;

  WidgetSize get _size => theme?.size ?? size;

  bool get _matchTextDirection =>
      theme?.matchTextDirection ?? matchTextDirection;

  AssetBundle? get _bundle => theme?.bundle ?? bundle;

  String? get _package => theme?.package ?? package;

  double? get _customSize => theme?.customSize ?? customSize;

  BoxFit get _fit => theme?.fit ?? fit;

  AlignmentGeometry get _alignment => theme?.alignment ?? alignment;

  bool get _allowDrawingOutsideViewBox =>
      theme?.allowDrawingOutsideViewBox ?? allowDrawingOutsideViewBox;

  AppIconWidgetBuilder? get _loadingBuilder =>
      theme?.loadingBuilder ?? loadingBuilder;

  AppIconWidgetBuilder? get _placeholderBuilder =>
      theme?.placeholderBuilder ?? placeholderBuilder;

  AppIconWidgetErrorBuilder? get _errorBuilder =>
      theme?.errorBuilder ?? errorBuilder;

  String? get _semanticLabel => theme?.semanticLabel ?? semanticLabel;

  bool get _excludeFromSemantics =>
      theme?.excludeFromSemantics ?? excludeFromSemantics;

  SvgTheme get _svgTheme => theme?.svgTheme ?? svgTheme;

  ColorFilter? get _colorFilter => theme?.colorFilter ?? colorFilter;

  Clip get _clipBehavior => theme?.clipBehavior ?? clipBehavior;

  Color? get _color => theme?.color ?? color;

  BlendMode get _colorBlendMode => theme?.colorBlendMode ?? colorBlendMode;

  @override
  Widget build(BuildContext context) {
    if (path.isUrl) {
      // Fetch from network
      if (path.toLowerCase().endsWith('.svg')) {
        return buildSvgNetwork(context);
      } else {
        return buildImageNetwork(context);
      }
    } else {
      // Fetch from local
      if (path.toLowerCase().endsWith('.svg')) {
        return buildSvgLocal(context);
      } else {
        return buildImageLocal(context);
      }
    }
  }

  Widget buildImageLocal(BuildContext context) {
    try {
      return Image.asset(
        path,
        key: key,
        bundle: _bundle,
        errorBuilder: _errorBuilder != null
            ? (context, error, stackTrace) => _errorBuilder!.call(
                context, _customSize ?? _getSize(_size), error, stackTrace)
            : (context, error, stackTrace) => buildErrorDefault(context),
        semanticLabel: _semanticLabel,
        excludeFromSemantics: _excludeFromSemantics,
        width: _customSize ?? _getSize(_size),
        height: _customSize ?? _getSize(_size),
        color: _color,
        colorBlendMode: _colorBlendMode,
        fit: _fit,
        alignment: _alignment,
        matchTextDirection: _matchTextDirection,
        isAntiAlias: false,
        package: _package,
        filterQuality: FilterQuality.medium,
      );
    } catch (error, stacktrace) {
      return _errorBuilder?.call(
              context, _customSize ?? _getSize(_size), error, stacktrace) ??
          buildErrorDefault(context);
    }
  }

  Widget buildImageNetwork(BuildContext context) {
    return ExtendedImage.network(
      path,
      height: _customSize ?? _getSize(_size),
      width: _customSize ?? _getSize(_size),
      alignment: _alignment,
      cache: true,
      fit: _fit,
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return _loadingBuilder != null
                ? _loadingBuilder!.call(context, _customSize ?? _getSize(_size))
                : _placeholderBuilder != null
                    ? _placeholderBuilder!
                        .call(context, _customSize ?? _getSize(_size))
                    : buildLoadingDefault(context);
          case LoadState.completed:
            return null; // Return null to display the image
          case LoadState.failed:
            return _errorBuilder != null
                ? _errorBuilder!
                    .call(context, _customSize ?? _getSize(_size), null, null)
                : buildErrorDefault(context);
        }
      },
    );
  }

  Widget buildSvgLocal(BuildContext context) {
    try {
      return SvgPicture.asset(
        path,
        key: key,
        matchTextDirection: _matchTextDirection,
        bundle: _bundle,
        package: _package,
        height: _customSize ?? _getSize(_size),
        width: _customSize ?? _getSize(_size),
        fit: _fit,
        alignment: _alignment,
        allowDrawingOutsideViewBox: _allowDrawingOutsideViewBox,
        placeholderBuilder: _placeholderBuilder != null
            ? (context) => _placeholderBuilder!
                .call(context, _customSize ?? _getSize(_size))
            : (context) => buildPlaceholderDefault(context),
        semanticsLabel: _semanticLabel,
        theme: _svgTheme,
        colorFilter: _colorFilter,
        clipBehavior: _clipBehavior,
        color: _color,
        colorBlendMode: _colorBlendMode,
      );
    } catch (error, stacktrace) {
      return _errorBuilder?.call(
              context, _customSize ?? _getSize(_size), error, stacktrace) ??
          buildErrorDefault(context);
    }
  }

  Widget buildSvgNetwork(BuildContext context) {
    try {
      return SvgPicture.network(
        path,
        key: key,
        matchTextDirection: _matchTextDirection,
        height: _customSize ?? _getSize(_size),
        width: _customSize ?? _getSize(_size),
        fit: _fit,
        alignment: _alignment,
        allowDrawingOutsideViewBox: _allowDrawingOutsideViewBox,
        placeholderBuilder: _placeholderBuilder != null
            ? (context) => _placeholderBuilder!
                .call(context, _customSize ?? _getSize(_size))
            : (context) => buildPlaceholderDefault(context),
        semanticsLabel: _semanticLabel,
        theme: _svgTheme,
        colorFilter: _colorFilter,
        clipBehavior: _clipBehavior,
        color: _color,
        colorBlendMode: _colorBlendMode,
      );
    } catch (error, stacktrace) {
      return _errorBuilder?.call(
              context, _customSize ?? _getSize(_size), error, stacktrace) ??
          buildErrorDefault(context);
    }
  }

  double _getSize(WidgetSize size) {
    switch (size) {
      case WidgetSize.xxs:
        return 12;
      case WidgetSize.xs:
        return 16;
      case WidgetSize.sm:
        return 20;
      case WidgetSize.md:
        return 24;
      case WidgetSize.lg:
        return 28;
      case WidgetSize.xl:
        return 32;
      case WidgetSize.xxl:
        return 36;
    }
  }

  AppIcon copy({
    Key? key,
    bool? matchTextDirection,
    AssetBundle? bundle,
    String? package,
    WidgetSize? size,
    double? customSize,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    bool? allowDrawingOutsideViewBox,
    AppIconWidgetBuilder? loadingBuilder,
    AppIconWidgetBuilder? placeholderBuilder,
    AppIconWidgetErrorBuilder? errorBuilder,
    String? semanticLabel,
    bool? excludeFromSemantics,
    SvgTheme? svgTheme,
    ColorFilter? colorFilter,
    Clip? clipBehavior,
    Color? color,
    BlendMode? colorBlendMode,
    AppIconTheme? theme,
  }) =>
      AppIcon(
        path: path,
        matchTextDirection: matchTextDirection ?? this.matchTextDirection,
        bundle: bundle,
        package: package ?? this.package,
        size: size ?? this.size,
        customSize: customSize ?? this.customSize,
        fit: fit ?? this.fit,
        alignment: alignment ?? this.alignment,
        allowDrawingOutsideViewBox:
            allowDrawingOutsideViewBox ?? this.allowDrawingOutsideViewBox,
        loadingBuilder: loadingBuilder ?? this.loadingBuilder,
        placeholderBuilder: placeholderBuilder ?? this.placeholderBuilder,
        errorBuilder: errorBuilder ?? this.errorBuilder,
        semanticLabel: semanticLabel ?? this.semanticLabel,
        svgTheme: svgTheme ?? this.svgTheme,
        colorFilter: colorFilter ?? this.colorFilter,
        clipBehavior: clipBehavior ?? this.clipBehavior,
        color: color ?? this.color,
        colorBlendMode: colorBlendMode ?? this.colorBlendMode,
        theme: theme ?? this.theme,
      );

  Widget buildLoadingDefault(BuildContext context) {
    return buildPlaceholderDefault(context);
  }

  Widget buildPlaceholderDefault(BuildContext context) {
    return Container();
  }

  Widget buildErrorDefault(BuildContext context) {
    return buildPlaceholderDefault(context);
  }
}
