import 'package:core/lib.dart';

abstract class AppPageState<WIDGET extends AppStatefulWidget>
    extends AppState<WIDGET> with AutoRouteAware {
  AutoRouteObserver? _observer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    try {
      _observer =
          RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    } catch (_) {
      _observer = null;
    }
    _observer?.subscribe(this, context.routeData);
  }

  @override
  void dispose() {
    super.dispose();
    _observer?.unsubscribe(this);
  }

  Widget buildScaffold<T>({
    bool canPop = true,
    Function(BuildContext context, T? result)? onPop,
    Widget Function(BuildContext context)? buildDrawer,
    Widget Function(BuildContext context)? buildBottomNavigationBar,
    PreferredSizeWidget? Function(BuildContext context)? buildAppBar,
    required Widget Function(BuildContext context) buildBody,
    Widget Function(BuildContext context)? buildFloatingButton,
  }) {
    return GestureDetector(
      onTap: clearFocus,
      child: buildPopScope(
        canPop: canPop,
        onPop: onPop,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          drawer: buildDrawer?.call(context),
          bottomNavigationBar: buildBottomNavigationBar?.call(context),
          appBar: buildAppBar?.call(context),
          body: buildBody(context),
          floatingActionButton: buildFloatingButton?.call(context),
        ),
      ),
    );
  }
}
