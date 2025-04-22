import 'package:change_application_name/application.dart';
import 'package:change_application_name/examples/presentation_example/pages/responsive_page_copy-desktop.dart';
import 'package:change_application_name/examples/presentation_example/pages/responsive_page_copy-mobile.dart';
import 'package:change_application_name/examples/presentation_example/pages/responsive_page_copy-tablet.dart';

class ExampleResponsivePage extends AppPage {
  const ExampleResponsivePage({super.key});

  @override
  State<ExampleResponsivePage> createState() => _SplashScreenState();
}

class _SplashScreenState extends AppPageState<ExampleResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return buildResponsive(
      child: (platform, breakpoint) {
        if (breakpoint == AppBreakpoint.mobilePortrait ||
            breakpoint == AppBreakpoint.mobileLandscape) {
          return ExampleResponsiveMobilePage();
        } else if (breakpoint == AppBreakpoint.tablet) {
          return ExampleResponsiveTabletPage();
        } else if (breakpoint == AppBreakpoint.desktop) {
          return ExampleResponsiveDesktopPage();
        }
        return ExampleResponsiveDesktopPage();
      },
    );
  }
}
