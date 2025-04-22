import 'package:design_system/lib.dart';

class AppRadioGroup extends AppStatefulWidget {
  const AppRadioGroup(
      {super.key,
      super.size,
      required this.label,
      this.hintText,
      required this.options});

  final String label;
  final String? hintText;
  final List<String> options;

  @override
  State<AppRadioGroup> createState() => _AppRadioGroupState();
}

class _AppRadioGroupState extends AppState<AppRadioGroup> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        children: [
          AppText(widget.label,
              style: TextStyle(
                color: context.theme.color.textPrimary,
                fontSize: widget.size == WidgetSize.sm ? 12 : 14,
                fontWeight: FontWeight.w600,
              )),
        ],
      ),
      SizedBox(height: 4),
      Row(
        children: [
          AppText(widget.hintText ?? '',
              style: TextStyle(
                color: context.theme.color.textSecondary,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )),
        ],
      ),
      Column(
        children: [
          for (var option in widget.options)
            RadioListTile(
                title: AppText(option,
                    style: TextStyle(
                      color: context.theme.color.textPrimary,
                      fontSize: widget.size == WidgetSize.sm ? 12 : 14,
                      fontWeight: FontWeight.w400,
                    )),
                value: option,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                contentPadding: EdgeInsets.zero)
        ],
      )
    ]);
  }
}
