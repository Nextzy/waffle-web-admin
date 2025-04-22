import 'package:core/lib.dart';

abstract class AppStatelessWidget extends StatelessWidget {
  const AppStatelessWidget({
    super.key,
    this.size = WidgetSize.md,
    this.state = FullWidgetState.normal,
  });

  final FullWidgetState state;
  final WidgetSize size;

  AppThemeData getTheme(BuildContext context) => ThemeApplication.of(context);
}
