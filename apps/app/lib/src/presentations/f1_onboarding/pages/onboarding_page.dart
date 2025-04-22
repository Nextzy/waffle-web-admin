import 'package:change_application_name/application.dart';

@RoutePage()
class OnboardingPage extends AppPage {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _YourPageState();
}

class _YourPageState extends AppPageState<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return TodoView.create(todo: 'Feature: Onboarding');
  }
}
