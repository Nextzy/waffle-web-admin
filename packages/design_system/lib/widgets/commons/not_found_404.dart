import 'package:design_system/lib.dart';

class NotFoundPage extends AppPage {
  const NotFoundPage._({
    required super.key,
  });

  static const String name = 'NotFoundPage';

  static Widget create({Key? key}) => //
  NotFoundPage._(
    key: const Key(name),
  );

  @override
  State<NotFoundPage> createState() => _NotFoundPageState();
}

class _NotFoundPageState extends AppState<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppText(
          '404 - Page Not Found',
          style: AppTextStyleBuilder.header.s36.colorPrimary.build(context),
        ),
      ),
    );
  }
}

