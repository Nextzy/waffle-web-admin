import 'package:change_application_name/application.dart';

@RoutePage()
class AuthenticationPage extends AppPage {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends AppPageBlocWidgetState<
    AuthenticationPage, AuthenticationBloc, dynamic> {
  @override
  Widget build(BuildContext context) {
    return TodoView.create(todo: '');
  }
}
