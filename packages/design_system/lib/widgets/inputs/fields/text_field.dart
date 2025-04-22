import 'package:design_system/lib.dart';

enum AppTextFieldStyle { shaded, outline }

class AppTextField<T> extends AppStatefulWidget {
  const AppTextField({
    super.key,
    super.size,
    super.themeMode,
    this.style = AppTextFieldStyle.outline,
    this.feedbackState,
    this.label,
    this.text,
    this.required = false,
    this.placeholderText,
    this.helperText,
    this.statusText,
    this.textAlign = TextAlign.start,
    this.obscure = false,
    this.maxLines = 1,
    this.maxLength,
    this.keyboardType,
    this.inputFormatters,
    this.prefixText,
    this.suffixText,
    this.startWidget,
    this.endWidget,
    this.endTextButton,
    this.startIcon,
    this.endIcon,
    this.validator,
    this.clearButton = true,
    this.disabled = false,
    this.loading = false,
    this.border,
    this.borderRadius,
    this.backgroundColor,

    ///========== CONTROLLER ==========///
    this.onTextChange,
    this.textInputAction,
    this.controller,
    this.focusNode,
    this.onFocusedChange,
    this.onEditingComplete,

    ///============= CALLBACK METHOD =============///
    this.onButtonPress,
    this.onButtonLongPress,
    this.onButtonHover,
    this.onButtonFocusChange,
  });

  final AppTextFieldStyle style;
  final String? label;
  final String? text;
  final bool required;
  final FeedbackState? feedbackState;
  final String? placeholderText;
  final String? helperText;
  final String? statusText;
  final TextAlign textAlign;
  final bool obscure;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<T>? validator;
  final bool disabled;
  final bool loading;
  final bool clearButton;
  final String? prefixText;
  final String? suffixText;
  final Widget? startWidget;
  final Widget? endWidget;
  final String? endTextButton;
  final String? startIcon;
  final String? endIcon;
  final Border? border;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final VoidCallback? onEditingComplete;
  final ValueChanged? onFocusedChange;
  final ValueChanged<String>? onTextChange;

  ///============= CALLBACK METHOD =============///
  final VoidCallback? onButtonPress;
  final VoidCallback? onButtonLongPress;
  final ValueChanged<bool>? onButtonHover;
  final ValueChanged<bool>? onButtonFocusChange;

  @override
  State<StatefulWidget> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends AppState<AppTextField> {
  late final ValueNotifier<bool> _showClearButtonNotifier;
  late final FocusNode _focus;
  late final TextEditingController _controller;

  late bool obscure;

  final String requiredChar = '✱';

  String get textFeedbackIcon => switch (widget.feedbackState) {
        FeedbackState.info => '',
        FeedbackState.positive => '✓ ',
        FeedbackState.warning => '⚠ ',
        FeedbackState.negative => '⚠ ',
        null => '',
      };

  double get iconSize => switch (widgetSize) {
        WidgetSize.xxs => 16,
        WidgetSize.xs => 16,
        WidgetSize.sm => 16,
        WidgetSize.md => 20,
        WidgetSize.lg => 24,
        WidgetSize.xl => 24,
        WidgetSize.xxl => 24,
      };

  EdgeInsets get contentPadding => switch (widgetSize) {
        WidgetSize.xxs => const EdgeInsets.symmetric(vertical: 8.0),
        WidgetSize.xs => const EdgeInsets.symmetric(vertical: 8.0),
        WidgetSize.sm => const EdgeInsets.symmetric(vertical: 8.0),
        WidgetSize.md => const EdgeInsets.symmetric(vertical: 8.0),
        WidgetSize.lg => const EdgeInsets.symmetric(vertical: 12.0),
        WidgetSize.xl => const EdgeInsets.symmetric(vertical: 12.0),
        WidgetSize.xxl => const EdgeInsets.symmetric(vertical: 12.0),
      };

  TextStyle get labelTextStyle => switch (widgetSize) {
        WidgetSize.xxs =>
          AppTextStyleBuilder.ui.s12.semiBold.colorPrimary.build(context),
        WidgetSize.xs =>
          AppTextStyleBuilder.ui.s12.semiBold.colorPrimary.build(context),
        WidgetSize.sm =>
          AppTextStyleBuilder.ui.s12.semiBold.colorPrimary.build(context),
        WidgetSize.md =>
          AppTextStyleBuilder.ui.s14.semiBold.colorPrimary.build(context),
        WidgetSize.lg =>
          AppTextStyleBuilder.ui.s14.semiBold.colorPrimary.build(context),
        WidgetSize.xl =>
          AppTextStyleBuilder.ui.s14.semiBold.colorPrimary.build(context),
        WidgetSize.xxl =>
          AppTextStyleBuilder.ui.s14.semiBold.colorPrimary.build(context)
      };

  TextStyle get textStyle => switch (widgetSize) {
        WidgetSize.xxs => AppTextStyleBuilder.ui.s12
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textPrimary)
            .build(context),
        WidgetSize.xs => AppTextStyleBuilder.ui.s12
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textPrimary)
            .build(context),
        WidgetSize.sm => AppTextStyleBuilder.ui.s12
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textPrimary)
            .build(context),
        WidgetSize.md => AppTextStyleBuilder.ui.s14
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textPrimary)
            .build(context),
        WidgetSize.lg => AppTextStyleBuilder.ui.s14
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textPrimary)
            .build(context),
        WidgetSize.xl => AppTextStyleBuilder.ui.s14
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textPrimary)
            .build(context),
        WidgetSize.xxl => AppTextStyleBuilder.ui.s14
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textPrimary)
            .build(context)
      };

  TextStyle get placeholderTextStyle => switch (widgetSize) {
        WidgetSize.xxs => AppTextStyleBuilder.ui.s12
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textSecondary)
            .build(context),
        WidgetSize.xs => AppTextStyleBuilder.ui.s12
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textSecondary)
            .build(context),
        WidgetSize.sm => AppTextStyleBuilder.ui.s12
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textSecondary)
            .build(context),
        WidgetSize.md => AppTextStyleBuilder.ui.s14
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textSecondary)
            .build(context),
        WidgetSize.lg => AppTextStyleBuilder.ui.s14
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textSecondary)
            .build(context),
        WidgetSize.xl => AppTextStyleBuilder.ui.s14
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textSecondary)
            .build(context),
        WidgetSize.xxl => AppTextStyleBuilder.ui.s14
            .color(widget.disabled
                ? theme.color.textTertiary
                : theme.color.textSecondary)
            .build(context)
      };

  TextStyle get helperTextStyle => switch (widgetSize) {
        WidgetSize.xxs =>
          AppTextStyleBuilder.ui.s12.colorSecondary.build(context),
        WidgetSize.xs =>
          AppTextStyleBuilder.ui.s12.colorSecondary.build(context),
        WidgetSize.sm =>
          AppTextStyleBuilder.ui.s12.colorSecondary.build(context),
        WidgetSize.md =>
          AppTextStyleBuilder.ui.s12.colorSecondary.build(context),
        WidgetSize.lg =>
          AppTextStyleBuilder.ui.s12.colorSecondary.build(context),
        WidgetSize.xl =>
          AppTextStyleBuilder.ui.s12.colorSecondary.build(context),
        WidgetSize.xxl =>
          AppTextStyleBuilder.ui.s12.colorSecondary.build(context)
      };

  Color get backgroundColor => switch (widget.style) {
        AppTextFieldStyle.outline => widget.disabled
            ? theme.color.bgInputDisabled
            : (widget.backgroundColor ??
                switch (widget.feedbackState) {
                  FeedbackState.positive => theme.color.bgSubtlePositive,
                  FeedbackState.warning => theme.color.bgSubtleWarning,
                  FeedbackState.negative => theme.color.bgSubtleNegative,
                  FeedbackState.info => theme.color.bgInputOutlined,
                  null => theme.color.bgInputOutlined,
                }),
        AppTextFieldStyle.shaded => widget.disabled
            ? theme.color.bgInputDisabled
            : (widget.backgroundColor ?? theme.color.bgInputShaded),
      };

  Color get dividerColor => switch (widget.style) {
        AppTextFieldStyle.outline => theme.color.border,
        AppTextFieldStyle.shaded => theme.color.border,
      };

  Widget get verticalDivider => VerticalDivider(
        width: theme.border.md.maxWidth,
        thickness: theme.border.md.maxWidth,
        color: dividerColor,
      );

  InputBorder get removeBorder => OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
        borderRadius: widget.borderRadius ?? theme.borderRadius.md,
      );

  @override
  void initState() {
    _showClearButtonNotifier = ValueNotifier(false);
    obscure = widget.obscure;
    _focus = (widget.focusNode ?? FocusNode())..addListener(_onFocusChange);
    _controller = (widget.controller ?? TextEditingController())
      ..addListener(_onTextChanged);
    if (widget.text.isNotNullOrEmpty) _controller.text = widget.text!;
    super.initState();
  }

  @override
  void dispose() {
    _showClearButtonNotifier.dispose();
    _controller.dispose();
    _focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(
      crossAxisAlignment: CrossAxisAlignment.start,
      gap: 4,
      children: [
        if (widget.label.isNotNullOrBlank)
          AppRichText(
            style:
                AppTextStyleBuilder.ui.s12.colorPrimary.medium.build(context),
            spans: [
              TextSpan(text: widget.label),
              if (widget.required)
                TextSpan(
                  text: requiredChar,
                  style: AppTextStyleBuilder.ui.s12
                      .color(theme.color.textNegative)
                      .medium
                      .build(context),
                ),
            ],
          ),
        FullWidgetStateBuilder(
            create: stateNotifier,
            builder: (context, widgetState, snapshot) => GestureRowLayout(
                  animate: true,
                  animateDuration: 50.milliseconds,
                  disabledPressAnimation: true,
                  crossAxisIntrinsic: true,
                  tapFocus: true,
                  disabled: widget.disabled,
                  onHover: _onHover,
                  onPress: () {
                    FocusScope.of(context).requestFocus(_focus);
                  },
                  onFocusChange: (value) {
                    if (value) {
                      FocusScope.of(context).requestFocus(_focus);
                    }
                  },
                  mouseCursor: SystemMouseCursors.text,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  backgroundColor: backgroundColor,
                  showFocus:
                      widget.style == AppTextFieldStyle.shaded ? false : true,
                  decoration: _createBorderStyle(
                    style: widget.style,
                    state: widgetState,
                    feedbackState: widget.feedbackState,
                    disabled: widget.disabled,
                    borderRadius: widget.borderRadius,
                  ),
                  children: [
                    if (widget.prefixText.isNotNullOrBlank)
                      buildPrefixText(
                        context,
                        text: widget.prefixText,
                        borderRadius: widget.borderRadius,
                      ),
                    if (widget.startWidget != null) ...[
                      widget.startWidget!,
                      verticalDivider,
                    ],
                    buildIcon(
                      disabled: widget.disabled,
                      size: widgetSize,
                      icon: widget.startIcon,
                    ),
                    Expanded(
                      child: Center(
                        child: TextFormField(
                          style: textStyle,
                          initialValue: widget.text?.isNotEmpty == true
                              ? widget.text
                              : null,
                          textAlignVertical: TextAlignVertical.top,
                          maxLines: widget.maxLines,
                          maxLength: widget.maxLength,
                          inputFormatters: widget.inputFormatters,
                          keyboardType: widget.keyboardType,
                          controller: widget.controller ?? _controller,
                          textInputAction: widget.textInputAction,
                          focusNode: _focus,
                          textAlign: widget.textAlign,
                          obscureText: obscure,
                          obscuringCharacter: '•',
                          validator: widget.validator,
                          enabled: !widget.disabled,
                          readOnly: widget.disabled,
                          onEditingComplete: widget.onEditingComplete,
                          //================ DECORATION ================//
                          decoration: InputDecoration(
                            contentPadding: contentPadding,
                            hintText: widget.placeholderText,
                            hintStyle: placeholderTextStyle,
                            errorStyle: const TextStyle(height: 0),
                            filled: true,
                            fillColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            isDense: true,
                            counter: null,
                            border: removeBorder,
                            enabledBorder: removeBorder,
                            disabledBorder: removeBorder,
                            focusedBorder: removeBorder,
                            errorBorder: removeBorder,
                            focusedErrorBorder: removeBorder,
                          ),
                        ),
                      ),
                    ),
                    if (widget.loading)
                      Center(
                        child: AppCircularLoading(
                            customSize: iconSize,
                            color: theme.color.iconTertiary),
                      ),
                    if (widget.clearButton)
                      ValueListenableBuilder(
                        valueListenable: _showClearButtonNotifier,
                        builder: (BuildContext context, bool value,
                                Widget? child) =>
                            value
                                ? Center(
                                    child: AppOnlyIconButton(
                                      size: widgetSize,
                                      icon:
                                          Assets.icon.crossCircleFilled.keyName,
                                      color: theme.color.iconTertiary,
                                      disabled: widget.disabled,
                                      onPress: _onPressClearText,
                                    ),
                                  )
                                : const SizedBox(),
                      ),
                    buildIcon(
                      disabled: widget.disabled,
                      size: widgetSize,
                      icon: widget.endIcon,
                    ),
                    if (widget.endTextButton != null)
                      buildButton(
                        context,
                        size: widgetSize,
                        endTextButton: widget.endTextButton,
                        borderRadius: widget.borderRadius,
                        disabled: widget.disabled,
                        onPress: widget.onButtonPress,
                        onLongPress: widget.onButtonLongPress,
                        onHover: widget.onButtonHover,
                        onFocusChange: widget.onButtonFocusChange,
                      ),
                    if (widget.endWidget != null) ...[
                      widget.endWidget!,
                      verticalDivider,
                    ],
                    if (widget.suffixText.isNotNullOrBlank)
                      buildSuffixText(
                        context,
                        text: widget.suffixText,
                        borderRadius: widget.borderRadius,
                      ),
                  ],
                )),
        if (widget.statusText.isNotNullOrBlank && widget.feedbackState != null)
          AppText(
            '$textFeedbackIcon${widget.statusText}',
            style: AppTextStyleBuilder.ui.s12
                .color(switch (widget.feedbackState) {
                  FeedbackState.positive => theme.color.textPositive,
                  FeedbackState.warning => theme.color.textWarning,
                  FeedbackState.negative => theme.color.textNegative,
                  FeedbackState.info => theme.color.textPrimary,
                  null => theme.color.textPositive,
                })
                .build(context),
          ),
        if (widget.helperText.isNotNullOrBlank)
          AppText(
            widget.helperText,
            style: helperTextStyle,
          ),
      ],
    );
  }

  ///========================= PRIVATE METHOD =========================///
  Widget buildPrefixText(
    BuildContext context, {
    required String? text,
    required BorderRadius? borderRadius,
  }) {
    return RowLayout(
      padding: switch (widgetSize) {
        WidgetSize.xxs => const EdgeInsetsDirectional.only(end: 4.0),
        WidgetSize.xs => const EdgeInsetsDirectional.only(end: 4.0),
        WidgetSize.sm => const EdgeInsetsDirectional.only(end: 4.0),
        WidgetSize.md => const EdgeInsetsDirectional.only(end: 6.0),
        WidgetSize.lg => const EdgeInsetsDirectional.only(end: 8.0),
        WidgetSize.xl => const EdgeInsetsDirectional.only(end: 8.0),
        WidgetSize.xxl => const EdgeInsetsDirectional.only(end: 8.0),
      },
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ContainerLayout(
          borderRadius: BorderRadiusDirectional.only(
            topStart:
                borderRadius?.topLeft ?? context.theme.borderRadius.md.topLeft,
            bottomStart: borderRadius?.bottomLeft ??
                context.theme.borderRadius.md.bottomLeft,
          ),
          backgroundColor: context.theme.color.bgSurface1,
          padding: switch (widgetSize) {
            WidgetSize.xxs =>
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            WidgetSize.xs =>
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            WidgetSize.sm =>
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            WidgetSize.md =>
              const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
            WidgetSize.lg =>
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            WidgetSize.xl =>
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            WidgetSize.xxl =>
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          },
          child: Center(
            child: AppText(
              text,
              style: placeholderTextStyle,
            ),
          ),
        ),
        verticalDivider,
      ],
    );
  }

  Widget buildSuffixText(
    BuildContext context, {
    required String? text,
    required BorderRadius? borderRadius,
  }) {
    return RowLayout(
      padding: switch (widgetSize) {
        WidgetSize.xxs => const EdgeInsetsDirectional.only(start: 4.0),
        WidgetSize.xs => const EdgeInsetsDirectional.only(start: 4.0),
        WidgetSize.sm => const EdgeInsetsDirectional.only(start: 4.0),
        WidgetSize.md => const EdgeInsetsDirectional.only(start: 6.0),
        WidgetSize.lg => const EdgeInsetsDirectional.only(start: 8.0),
        WidgetSize.xl => const EdgeInsetsDirectional.only(start: 8.0),
        WidgetSize.xxl => const EdgeInsetsDirectional.only(start: 8.0),
      },
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        verticalDivider,
        ContainerLayout(
          borderRadius: BorderRadiusDirectional.only(
            topEnd:
                borderRadius?.topLeft ?? context.theme.borderRadius.md.topLeft,
            bottomEnd: borderRadius?.bottomLeft ??
                context.theme.borderRadius.md.bottomLeft,
          ),
          backgroundColor: context.theme.color.bgSurface1,
          padding: switch (widgetSize) {
            WidgetSize.xxs =>
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            WidgetSize.xs =>
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            WidgetSize.sm =>
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            WidgetSize.md =>
              const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
            WidgetSize.lg =>
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            WidgetSize.xl =>
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            WidgetSize.xxl =>
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          },
          child: Center(
            child: AppText(
              text,
              style: placeholderTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildButton(
    BuildContext context, {
    required WidgetSize size,
    required String? endTextButton,
    required BorderRadius? borderRadius,
    required bool disabled,
    required VoidCallback? onPress,
    required VoidCallback? onLongPress,
    required ValueChanged<bool>? onHover,
    required ValueChanged<bool>? onFocusChange,
  }) {
    final padding = switch (widgetSize) {
      (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm) => Space.insetAll2,
      (WidgetSize.md || WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) =>
        Space.insetAll4,
    };

    final double radius = max(
        0,
        borderRadius?.maxRadius ??
            context.theme.borderRadius.md.maxRadius - (padding.maxValue / 2));

    return RowLayout(
      padding: padding,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Disabled(
            disabled: widget.disabled,
            child: AppShadedButton(
              borderRadius: BorderRadius.circular(radius),
              disabled: disabled,
              size: size,
              text: endTextButton ?? '',
              onPress: onPress,
              onLongPress: onLongPress,
              onHover: onHover,
              onFocusChange: onFocusChange,
            ),
          ),
        ),
      ],
    );
  }

  BoxDecoration _createBorderStyle({
    required AppTextFieldStyle style,
    required FullWidgetState state,
    required bool disabled,
    required FeedbackState? feedbackState,
    required BorderRadius? borderRadius,
  }) {
    final defaultBorderRadius = borderRadius ?? theme.borderRadius.md;
    Color defaultColorBorder = switch (style) {
      AppTextFieldStyle.outline => theme.color.border,
      AppTextFieldStyle.shaded => Colors.transparent,
    };

    switch (state) {
      case FullWidgetState.hovered:
        defaultColorBorder = theme.color.borderHover;
        break;
      case FullWidgetState.focused:
        defaultColorBorder = theme.color.borderActive;
        break;
      case FullWidgetState.pressed:
        break;
      case FullWidgetState.dragged:
        break;
      case FullWidgetState.selected:
        break;
      case FullWidgetState.scrolledUnder:
        break;
      case FullWidgetState.disabled:
        defaultColorBorder = switch (style) {
          AppTextFieldStyle.outline => theme.color.border,
          AppTextFieldStyle.shaded => Colors.transparent,
        };
        break;
      case FullWidgetState.fail:
        defaultColorBorder = theme.color.borderNegative;
        break;
      case _:
        break;
    }

    switch (feedbackState) {
      case FeedbackState.negative:
        defaultColorBorder = theme.color.borderNegative;
        break;
      case FeedbackState.warning:
        defaultColorBorder = theme.color.borderWarning;
        break;
      case FeedbackState.positive:
        defaultColorBorder = theme.color.borderPositive;
        break;
      case FeedbackState.info:
        break;
      case null:
        break;
    }

    return BoxDecoration(
      border: theme.border.md.copy(
        strokeAlign: BorderSide.strokeAlignOutside,
        color: defaultColorBorder,
      ),
      borderRadius: defaultBorderRadius,
    );
  }

  Widget buildIcon({
    required bool disabled,
    required WidgetSize size,
    required String? icon,
  }) {
    return Opacity(
      opacity: disabled ? 0.5 : 1.0,
      child: Padding(
        padding: switch (widgetSize) {
          WidgetSize.xxs => icon.isNotNullOrBlank
              ? SpaceDirectional.insetAll4
              : SpaceDirectional.insetStart8,
          WidgetSize.xs => icon.isNotNullOrBlank
              ? SpaceDirectional.insetAll4
              : SpaceDirectional.insetStart8,
          WidgetSize.sm => icon.isNotNullOrBlank
              ? SpaceDirectional.insetAll4
              : SpaceDirectional.insetStart8,
          WidgetSize.md => icon.isNotNullOrBlank
              ? SpaceDirectional.insetAll6
              : SpaceDirectional.insetStart12,
          WidgetSize.lg => icon.isNotNullOrBlank
              ? SpaceDirectional.insetAll8
              : SpaceDirectional.insetStart16,
          WidgetSize.xxl => icon.isNotNullOrBlank
              ? SpaceDirectional.insetAll8
              : SpaceDirectional.insetStart16,
          WidgetSize.xl => icon.isNotNullOrBlank
              ? SpaceDirectional.insetAll8
              : SpaceDirectional.insetStart16,
        },
        child: icon.isNotNullOrBlank
            ? icon.toSvgIcon(
                size: iconSize,
                colorFilter: ColorFilter.mode(
                  context.theme.color.iconSecondary,
                  BlendMode.srcIn,
                ),
              )
            : const SizedBox(),
      ),
    );
  }

  ///========================= CALLBACK METHOD =========================///
  void _onHover(bool value) {
    setFullWidgetState(
        value ? FullWidgetState.hovered : FullWidgetState.normal);
  }

  void _onFocusChange() {
    setFullWidgetState(
        _focus.hasFocus ? FullWidgetState.focused : FullWidgetState.normal);
    widget.onFocusedChange?.call(stateNotifier.value);
  }

  void _onTextChanged() {
    _showClearButtonNotifier.value = _controller.text.isNotNullOrBlank;
    widget.onTextChange?.call(_controller.text);
  }

  void _onPressClearText() {
    (widget.controller ?? _controller).text = '';
  }
}
