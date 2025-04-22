import 'package:design_system/lib.dart';

typedef AppImageWidgetBuilder = Widget Function(
    BuildContext context, double? width, double? height);

typedef AppImageWidgetErrorBuilder = Widget Function(BuildContext context,
    double? width, double? height, Object? error, StackTrace? stackTrace);

class AppImage extends AppStatelessWidget {
  const AppImage({
    super.key,
    required this.path,
    this.matchTextDirection = false,
    this.bundle,
    this.package,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.allowDrawingOutsideViewBox = false,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.theme = const SvgTheme(),
    this.colorFilter,
    this.clipBehavior = Clip.hardEdge,
    @Deprecated('Use colorFilter instead.') this.color,
    @Deprecated('Use colorFilter instead.')
    this.colorBlendMode = BlendMode.srcIn,
    this.aspectRatio,
    this.border,
    this.borderRadius,
    this.loadingBuilder,
    this.placeholderBuilder,
    this.errorBuilder,
  });

  final String? path;
  final bool matchTextDirection;
  final AssetBundle? bundle;
  final String? package;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final bool allowDrawingOutsideViewBox;
  final AppImageWidgetBuilder? loadingBuilder;
  final AppImageWidgetBuilder? placeholderBuilder;
  final AppImageWidgetErrorBuilder? errorBuilder;
  final String? semanticLabel;
  final bool excludeFromSemantics;
  final SvgTheme theme;
  final ColorFilter? colorFilter;
  final Clip clipBehavior;
  final Color? color;
  final BlendMode colorBlendMode;

  final Alignment alignment;
  final double? aspectRatio;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    Widget image;

    if (path.isNullOrBlank) {
      return placeholderBuilder != null
          ? placeholderBuilder!.call(context, width, height)
          : buildPlaceholderDefault(context);
    }

    if (path.isUrl) {
      // Fetch from network
      if (path?.toLowerCase().endsWith('.svg') == true) {
        image = buildSvgNetwork(context, path: path!);
      } else {
        image = buildImageNetwork(context, path: path!);
      }
    } else {
      // Fetch from local
      if (path?.toLowerCase().endsWith('.svg') == true) {
        image = buildSvgLocal(context, path: path!);
      } else {
        image = buildImageLocal(context, path: path!);
      }
    }

    final tmpBorderRadius = borderRadius ?? context.theme.borderRadius.md;

    return ContainerLayout(
      maxWidth: width,
      maxHeight: height,
      ratio: aspectRatio,
      border: border,
      borderRadius: tmpBorderRadius,
      child: ContainerLayout(
        borderRadius: tmpBorderRadius,
        clipBehavior: (tmpBorderRadius.maxRadius) > 0
            ? Clip.antiAliasWithSaveLayer
            : Clip.none,
        child: ContainerLayout(
          child: image,
        ),
      ),
    );
  }

  Widget buildSvgLocal(
    BuildContext context, {
    required String path,
  }) {
    try {
      return SvgPicture.asset(
        path,
        key: key,
        matchTextDirection: matchTextDirection,
        bundle: bundle,
        package: package,
        height: height,
        width: width,
        fit: fit,
        alignment: alignment,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        placeholderBuilder: placeholderBuilder != null
            ? (context) => placeholderBuilder!.call(context, width, height)
            : (context) => buildPlaceholderDefault(context),
        semanticsLabel: semanticLabel,
        theme: theme,
        colorFilter: colorFilter,
        clipBehavior: clipBehavior,
        color: color,
        colorBlendMode: colorBlendMode,
      );
    } catch (error, stacktrace) {
      return errorBuilder?.call(context, width, height, error, stacktrace) ??
          buildErrorDefault(context);
    }
  }

  Widget buildImageLocal(
    BuildContext context, {
    required String path,
  }) {
    try {
      return Image.asset(
        path,
        key: key,
        bundle: bundle,
        errorBuilder: errorBuilder != null
            ? (context, error, stackTrace) =>
                errorBuilder!.call(context, width, height, error, stackTrace)
            : (context, error, stackTrace) => buildErrorDefault(context),
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        width: width,
        height: height,
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        matchTextDirection: matchTextDirection,
        isAntiAlias: false,
        package: package,
        filterQuality: FilterQuality.medium,
      );
    } catch (error, stacktrace) {
      return errorBuilder?.call(context, width, height, error, stacktrace) ??
          buildErrorDefault(context);
    }
  }

  Widget buildSvgNetwork(
    BuildContext context, {
    required String path,
  }) {
    try {
      return SvgPicture.network(
        path,
        key: key,
        matchTextDirection: matchTextDirection,
        height: width,
        width: height,
        fit: fit,
        alignment: alignment,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        placeholderBuilder: placeholderBuilder != null
            ? (context) => placeholderBuilder!.call(context, width, height)
            : (context) => buildPlaceholderDefault(context),
        semanticsLabel: semanticLabel,
        theme: theme,
        colorFilter: colorFilter,
        clipBehavior: clipBehavior,
        color: color,
        colorBlendMode: colorBlendMode,
      );
    } catch (error, stacktrace) {
      return errorBuilder?.call(context, width, height, error, stacktrace) ??
          buildErrorDefault(context);
    }
  }

  Widget buildImageNetwork(
    BuildContext context, {
    required String path,
  }) {
    return ExtendedImage.network(
      path,
      width: width,
      height: height,
      alignment: alignment,
      cache: true,
      fit: fit,
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return loadingBuilder != null
                ? loadingBuilder!.call(context, width, height)
                : placeholderBuilder != null
                    ? placeholderBuilder!.call(context, width, height)
                    : buildLoadingDefault(context);
          case LoadState.completed:
            return null; // Return null to display the image
          case LoadState.failed:
            return errorBuilder != null
                ? errorBuilder!.call(context, width, height, null, null)
                : buildErrorDefault(context);
        }
      },
    );
  }

  Widget buildLoadingDefault(BuildContext context) {
    return Container(
      color: context.theme.color.bgSurface2,
      width: width,
      height: height,
    );
  }

  Widget buildPlaceholderDefault(BuildContext context) {
    return Container(
      color: context.theme.color.bgSurface2,
      width: width,
      height: height,
      child: Center(
        child: Assets.icon.imageFilled.svgIcon(
          size: 32.0,
          colorFilter: ColorFilter.mode(
            context.theme.color.iconTertiary,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  Widget buildErrorDefault(BuildContext context) {
    return Container(
      color: context.theme.color.bgSurface2,
      width: width,
      height: height,
      child: Center(
        child: Assets.icon.warningFilled.svgIcon(
          size: 32.0,
          colorFilter: ColorFilter.mode(
            context.theme.color.iconTertiary,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
