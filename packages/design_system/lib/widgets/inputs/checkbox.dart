import 'package:design_system/lib.dart';

class AppCheckbox extends AppStatefulWidget {
  AppCheckbox({
    super.key,
    this.tristate = false,
    this.text,
    this.supportingText,
    this.onChanged,
  });


  final bool tristate;
  final String? text;
  final String? supportingText;
  final ValueChanged<bool?>? onChanged;

  @override
  State<StatefulWidget> createState() => AppCheckboxState();
}

class AppCheckboxState extends AppState<AppCheckbox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return RowLayout(
      children: [
        Checkbox(
          value: value,
          tristate: widget.tristate,
          activeColor: theme.color.brandPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onChanged: _onChanged,
        ),
        ColumnLayout(
          padding: const EdgeInsets.only(top: 5),
          children: [
            if (widget.text != null)
              AppText(
                widget.text,
                style: AppTextStyleBuilder.ui.s12.medium.build(context),
              ),
            if (widget.supportingText != null)
              AppText(
                widget.supportingText,
                style: AppTextStyleBuilder.ui.s12.build(context),
              ),
          ],
        ),
      ],
    );
  }

  ///========================= CALLBACK METHOD =========================///
  void _onChanged(bool? value) {
    this.value = value;
    widget.onChanged?.call(value);
    updateState();
  }
}
