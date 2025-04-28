import 'package:design_system/lib.dart';

class TodoView extends AppStatelessWidget {
  const TodoView({
    super.key,
    required this.todo,
    this.onPress,
  });

  static Widget create({
    required String todo,
    GestureTapCallback? onPress,
  }) =>
      TodoView(
        todo: todo,
        onPress: onPress,
      );

  final String todo;
  final GestureTapCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppTopBackNavigationBar(
        title: todo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'เริ่มทำในหัวข้อ',
              style: AppTextStyleBuilder.header5.regular.build(context),
            ),
            Space.gap8,
            Text(
              todo,
              style: AppTextStyleBuilder.ui.regular.build(context),
            ),
            Space.gap32,
            // AppButton(
            //   title: "กลับ",
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
