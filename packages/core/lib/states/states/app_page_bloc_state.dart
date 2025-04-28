import 'package:core/lib.dart';

abstract class AppPageBlocWidgetState<
    WIDGET extends StatefulWidget,
    BLOC extends BlocBase<WidgetStateEvent<DATA>>,
    DATA> extends AppBlocWidgetState<WIDGET, BLOC, DATA> with AutoRouteAware {
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

  Widget buildScaffoldWithBloc({
    BlocWidgetListenerEvent<Object>? listenEvent,
    BlocWidgetListenerState<WidgetStateEvent<DATA?>>? listenState,
    PopStateCallback<DATA?>? canPop,
    PopListener<WidgetStateEvent<DATA?>>? onPop,
    BlocListenerCondition<WidgetStateEvent<DATA?>>? buildWhen,
    WidgetStateContextCallback<DATA?>? drawer,
    WidgetStateContextCallback<DATA?>? bottomNavigationBar,
    PreferredWidgetStateContextCallback<DATA?>? appBar,
    required WidgetStateContextCallback<DATA?> body,
    WidgetBuilder? failNoData,
    WidgetBuilder? warningNoData,
    WidgetBuilder? loadingNoData,
    WidgetStateContextCallback<DATA?>? floatingButton,
  }) {
    return WidgetStateBlocConsumer<BLOC, DATA>(
      bloc: bloc,
      listenEvent: (BuildContext context, Object event, Object? data) {
        switch (event) {
          case AppDialogEvent.showFullLoadingLocked:
            AppLoadingDialog.showFullLoadingLocked(context);
            break;
          case AppDialogEvent.dismissAll:
            AppLoadingDialog.dismissAll(context);
            break;
          case _:
            listenEvent?.call(context, event, data);
            break;
        }
      },
      listenState: listenState,
      buildWhen: buildWhen,
      builder: (context, state) => GestureDetector(
        // onTap: clearFocus, //TODO: cause bug
        child: buildPopScope(
          state: state,
          canPop: canPop,
          onPop: onPop,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            drawer: drawer?.call(context, state),
            bottomNavigationBar: bottomNavigationBar?.call(context, state),
            appBar: appBar?.call(context, state),
            body: (state.isFail && !state.hasData)
                ? failNoData?.call(context) ?? body(context, state)
                : (state.isWarning && !state.hasData)
                    ? warningNoData?.call(context) ?? body(context, state)
                    : (state.isLoading && !state.hasData)
                        ? loadingNoData?.call(context) ?? body(context, state)
                        : body(context, state),
            floatingActionButton: floatingButton?.call(context, state),
          ),
        ),
      ),
    );
  }
}
