import 'package:design_system/lib.dart';

class LayoutBreakpoint {
  static const mobilePortrait = 'MOBILE_PORT';
  static const mobileLandscape = 'MOBILE_LAND';
  static const tablet = 'TABLET';
  static const desktop = 'DESKTOP';
  static const desktopLg = 'DESKTOP_LG';
}

class AppBreakpoint {
  static const Breakpoint mobilePortrait = Breakpoint(
    start: 0,
    end: 479,
    name: LayoutBreakpoint.mobilePortrait,
  );

  static const Breakpoint mobileLandscape = Breakpoint(
    start: 480,
    end: 767,
    name: LayoutBreakpoint.mobileLandscape,
  );

  static const Breakpoint tablet = Breakpoint(
    start: 768,
    end: 1279,
    name: LayoutBreakpoint.tablet,
  );

  static const Breakpoint desktop = Breakpoint(
    start: 1280,
    end: 1919,
    name: LayoutBreakpoint.desktop,
  );

  static const Breakpoint desktopLg = Breakpoint(
    start: 1920,
    end: double.infinity,
    name: LayoutBreakpoint.desktopLg,
  );

  static Widget createBuilder(BuildContext context, Widget? child) {
    return ResponsiveBreakpoints.builder(
      breakpoints: [
        mobilePortrait,
        mobileLandscape,
        tablet,
        desktop,
        desktopLg,
      ],
      child: child!,
    );
  }
}

extension BreakpointExtension on Breakpoint {
  bool get isMobile =>
      (name == LayoutBreakpoint.mobilePortrait) ||
          (name == LayoutBreakpoint.mobileLandscape);

  bool get isMobilePortrait =>
      (name == LayoutBreakpoint.mobilePortrait);

  bool get isMobileLandscape =>
      (name == LayoutBreakpoint.mobileLandscape);

  bool get isTablet => name == LayoutBreakpoint.tablet;

  bool get isDesktop =>
      (name == LayoutBreakpoint.desktop) ||
          (name == LayoutBreakpoint.desktopLg);
}
