import 'package:design_system/lib.dart';

class AppTutorial extends AppStatefulWidget {
  const AppTutorial({super.key});

  @override
  AppState<AppTutorial> createState() => _AppTutorialState();
}

class _AppTutorialState extends AppState<AppTutorial> {
  @override
  Widget build(BuildContext context) {
    return ContainerLayout();
  }
}
