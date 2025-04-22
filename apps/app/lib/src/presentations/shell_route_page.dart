  
import 'package:change_application_name/application.dart';

class ShellRoutePage extends AppStatelessWidget {
  const ShellRoutePage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoRouter(),
    );
  }
}
