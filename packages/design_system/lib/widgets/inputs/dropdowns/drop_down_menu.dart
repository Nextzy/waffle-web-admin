import 'package:design_system/lib.dart';

class DropdownMenuItemState extends BaseModel<DropdownMenuItemState> {
  DropdownMenuItemState({
    this.startIcon,
    this.startIconColor,
    this.paintStartIcon = true,
    required this.textTitle,
    this.textSupport,
    this.endIcon,
    this.endIconColor,
    this.paintEndIcon = true,
    this.keyStroke,
    this.divider = false,
  });

  final String? startIcon;
  final Color? startIconColor;
  final bool paintStartIcon;
  final String textTitle;
  final String? textSupport;
  final String? endIcon;
  final Color? endIconColor;
  final bool paintEndIcon;
  final String? keyStroke;
  final bool divider;

  @override
  DropdownMenuItemState copyWith({
    // AvatarModel? avatar,
    String? startIcon,
    Color? startIconColor,
    bool? paintStartIcon,
    String? textTitle,
    String? textSupport,
    String? endIcon,
    Color? endIconColor,
    bool? paintEndIcon,
    String? keyStroke,
    bool? divider,
  }) =>
      DropdownMenuItemState(
        startIcon: startIcon ?? this.startIcon,
        startIconColor: startIconColor ?? this.startIconColor,
        paintStartIcon: paintStartIcon ?? this.paintStartIcon,
        textTitle: textTitle ?? this.textTitle,
        textSupport: textSupport ?? this.textSupport,
        endIcon: endIcon ?? this.endIcon,
        endIconColor: endIconColor ?? this.endIconColor,
        paintEndIcon: paintEndIcon ?? this.paintEndIcon,
        keyStroke: keyStroke ?? this.keyStroke,
        divider: divider ?? this.divider,
      );

  @override
  List<Object?> get props => [
        startIcon,
        startIconColor,
        paintStartIcon,
        textTitle,
        textSupport,
        endIcon,
        endIconColor,
        paintEndIcon,
        keyStroke
      ];
}

class AppDropdownMenu extends AppStatefulWidget {
  const AppDropdownMenu({
    super.key,
    required this.state,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
  });

  final DropdownMenuItemState state;

  ///============= CALLBACK METHOD =============///
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;

  @override
  State<AppDropdownMenu> createState() => _AppDropdownMenuItemState();
}

class _AppDropdownMenuItemState extends AppState<AppDropdownMenu> {
  bool focused = false;

  DropdownMenuItemState get dropdownState => widget.state;

  @override
  Widget build(BuildContext context) {
    return AppInkWell(
      onTap: widget.onPressed,
      onLongPress: widget.onLongPress,
      onHover: widget.onHover,
      onFocusChange: widget.onFocusChange,
      child: RowLayout(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
        children: [
          Expanded(
            child: RowLayout(
              crossAxisAlignment: CrossAxisAlignment.center,
              padding: const EdgeInsets.all(10.0),
              children: [
                Expanded(
                  child: RowLayout(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    gap: 8,
                    children: [
                      Expanded(
                        child: RowLayout(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          gap: 8,
                          children: [
                            if (dropdownState.startIcon != null)
                              dropdownState.startIcon.toSvgIcon(
                                size: 20,
                                color: dropdownState.startIconColor ??
                                    theme.color.textSecondary,
                              ),
                            AppText(
                              dropdownState.textTitle,
                              style: AppTextStyleBuilder
                                  .ui.s14.medium.colorPrimary
                                  .build(context),
                            ),
                            if (dropdownState.textSupport.isNotNullOrEmpty)
                              AppText(
                                dropdownState.textSupport,
                                style: AppTextStyleBuilder
                                    .ui.s14.medium.colorPrimary
                                    .build(context),
                              ),
                          ],
                        ),
                      ),
                      if (dropdownState.endIcon != null)
                        dropdownState.endIcon.toSvgIcon(
                          size: 20,
                          color: dropdownState.endIconColor ??
                              theme.color.textSecondary,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
