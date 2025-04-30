import 'package:change_application_name/application.dart';

part 'router.gr.dart';

enum AppRouteEvent { init, restart }

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        // AppRoute(
        //   path: '/',
        //   page: HomeRoute.page,
        //   initial: false,
        // ),
        AppRoute(
          // initial: true,
          path: '/auth',
          page: AuthenticationRoute.page,
        ),
        AppRoute(
          initial: true,
          path: '/console',
          page: ConsoleRoute.page,
          children: [
            // RedirectRoute(path: '', redirectTo: 'analytics'),
            AppRoute(path: 'analytics', page: ProfileRoute.page),
            AppRoute(path: 'campaigns', page: SettingRoute.page),
            AppRoute(path: 'roles', page: RolesRoute.page, initial: true),
          ],
        ),
        AppRoute(
          path: '/setting',
          page: SettingRoute.page,
        ),
        AppRoute(
          path: '/profile',
          page: ProfileRoute.page,
        ),
        RedirectRoute(
          path: '*',
          redirectTo: '/',
        ),
      ];
}

class AppRouterBloc extends FalconEventBloc<AppRouteEvent, AppRouter> {
  AppRouterBloc() : super(_createRoute());

  AppRouter get router => state;

  @override
  Future<void> onBlocEvent(BlocEvent<AppRouteEvent> event) async {
    switch (event.name) {
      case AppRouteEvent.init:
        return _init();
      case AppRouteEvent.restart:
        return _restart();
    }
  }

  ///========================= PRIVATE METHOD =========================///
  Future<void> _init() async {
    //TODO: Implement init deeplink
  }

  Future<void> _restart() async {
    emitter(_createRoute());
  }

  ///========================= STATIC METHOD =========================///
  static AppRouter _createRoute() => AppRouter(
        navigatorKey: Catcher2.navigatorKey,
      );
}
