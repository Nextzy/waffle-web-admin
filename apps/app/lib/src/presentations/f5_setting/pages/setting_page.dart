import 'package:change_application_name/application.dart';

@RoutePage()
class SettingPage extends AppPage {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends AppPageState<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return TodoView.create(todo: 'Feature: Setting');
  }
}
