import 'package:change_application_name/application.dart';

@RoutePage()
class ProfilePage extends AppPage {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _YourPageState();
}

class _YourPageState extends AppPageState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return TodoView.create(todo: 'Feature: Profile');
  }
}
