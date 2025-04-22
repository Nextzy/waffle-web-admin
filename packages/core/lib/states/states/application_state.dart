import 'package:core/lib.dart';

abstract class ApplicationState<T extends StatefulWidget>
    extends FalconApplicationState<T> {
  AppThemeData get theme => ThemeApplication.of(context);

  Widget buildResponsive({required ResponsiveBuilder child}) {
    final Breakpoint breakpoint = ResponsiveBreakpoints.of(context).breakpoint;

    return child(PlatformChecker.platform, breakpoint);
  }
}
