import 'package:design_system/lib.dart';

class AutoInputHelper<T> extends AppStatelessWidget {
  const AutoInputHelper({
    super.key,
    this.label,
    this.helperItems,
    this.onTapItem,
    required this.child,
  });

  final String? label;
  final List<HelperItem>? helperItems;
  final Function(T data)? onTapItem;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return kDebugMode
        ? Stack(
      children: [
        child,
        SafeArea(
          child: Align(
            alignment: Alignment.topRight,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTapDown: (detail) => _showDropdown(context, detail),
                child: buildHelperLabel(),
              ),
            ),
          ),
        ),
      ],
    )
        : child;
  }

  Container buildHelperLabel() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
    decoration: BoxDecoration(color: Colors.orange.withValues(alpha: 0.7)),
    child: Text(
      label ?? 'Helper',
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
    ),
  );

  Future<T?> _showDropdown(BuildContext context, TapDownDetails details) {
    if (helperItems.isEmptyOrNull) return Future.value(null);

    return showMenu<T>(
      context: context,
      color: Colors.white,
      menuPadding: EdgeInsets.all(0),
      position: RelativeRect.fromLTRB(
        details.globalPosition.dx,
        details.globalPosition.dy,
        details.globalPosition.dx + 1,
        details.globalPosition.dy + 1,
      ),
      items: helperItems?.map((item) {
        return PopupMenuItem<T>(
          value: item.data,
          child: Text(item.title),
        );
      }).toList() ??
          [],
    ).then((data) {
      if (data != null) {
        onTapItem?.call(data);
      }
      return data;
    });
  }
}

class HelperItem<T> {
  HelperItem({
    required this.title,
    required this.data,
  });

  final String title;
  final T data;
}
