import 'package:design_system/lib.dart';

class DropdownListItemState extends BaseModel<DropdownListItemState> {
  DropdownListItemState({
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
  DropdownListItemState copyWith({
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
      DropdownListItemState(
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

class AppDropdownListItem extends DropdownMenuItem<String> {
  AppDropdownListItem({
    super.key,
    required String id,
    required DropdownListItemState state,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
  }) : super(
          value: id,
          child: _AppDropdownListItem(
            key: key,
            state: state,
            onPressed: onPressed,
            onLongPress: onLongPress,
            onHover: onHover,
            onFocusChange: onFocusChange,
          ),
        );
}

class _AppDropdownListItem extends AppStatefulWidget {
  const _AppDropdownListItem({
    required super.key,
    required this.state,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
  });

  final DropdownListItemState state;

  ///============= CALLBACK METHOD =============///
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;

  @override
  State<_AppDropdownListItem> createState() => _AppDropdownListItemState();
}

class _AppDropdownListItemState
    extends AppState<_AppDropdownListItem> {
  bool focused = false;

  DropdownListItemState get dropdownState => widget.state;

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
          RowLayout(
            crossAxisAlignment: CrossAxisAlignment.center,
            padding: const EdgeInsets.all(10.0),
            children: [
              RowLayout(
                crossAxisAlignment: CrossAxisAlignment.center,
                gap: 8,
                children: [
                  RowLayout(
                    // mainAxisExpanded: true,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    gap: 8,
                    children: [
                      if (dropdownState.startIcon != null)
                        dropdownState.startIcon.toSvgIcon(
                          size: 16,
                          color: dropdownState.startIconColor ?? theme.color.textSecondary,
                        ),
                      AppText(
                        dropdownState.textTitle,
                        style: AppTextStyleBuilder
                            .ui.s12.medium.colorSecondary
                            .build(context),
                      ),
                      if (dropdownState.textSupport.isNotNullOrEmpty)
                        AppText(
                          dropdownState.textSupport,
                          style: AppTextStyleBuilder
                              .ui.s12.colorSecondary
                              .build(context),
                        ),
                    ],
                  ),
                  if (dropdownState.endIcon != null)
                    dropdownState.endIcon.toSvgIcon(
                      size: 16,
                      color: dropdownState.endIconColor ?? theme.color.textSecondary,
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
