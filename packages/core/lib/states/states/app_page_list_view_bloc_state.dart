import 'package:core/lib.dart';

abstract class AppPageListViewBlocState<
    WIDGET extends StatefulWidget,
    BLOC extends BlocBase<WidgetStateEvent<DATA>>,
    DATA> extends AppPageBlocWidgetState<WIDGET, BLOC, DATA> {
  int get itemCount;

  Widget buildScaffoldItemListWithBloc({
    BlocWidgetListenerEvent<Object>? listenEvent,
    BlocWidgetListenerState<WidgetStateEvent<DATA?>>? listenState,
    PopStateCallback<DATA?>? canPop,
    PopListener<WidgetStateEvent<DATA?>>? onPop,
    BlocListenerCondition<WidgetStateEvent<DATA?>>? buildWhen,
    WidgetStateContextCallback<DATA?>? drawer,
    WidgetStateContextCallback<DATA?>? buildBottomNavigationBar,
    PreferredWidgetStateContextCallback<DATA?>? appBar,
    required Widget? Function(
            BuildContext context, int index, WidgetStateEvent<DATA?> state)
        itemBuilder,
    WidgetBuilder? failNoData,
    WidgetBuilder? warningNoData,
    WidgetBuilder? loadingNoData,
    WidgetStateContextCallback<DATA?>? floatingButton,
  }) {
    return buildScaffoldWithBloc(
      listenEvent: listenEvent,
      listenState: listenState,
      canPop: canPop,
      onPop: onPop,
      buildWhen: buildWhen,
      drawer: drawer,
      bottomNavigationBar: buildBottomNavigationBar,
      appBar: appBar,
      floatingButton: floatingButton,
      body: (context, state) => (state.isFail && !state.hasData)
          ? failNoData?.call(context) ??
              AppListView.builder(
                itemCount: itemCount,
                itemBuilder: (context, index) =>
                    itemBuilder(context, index, state),
              )
          : (state.isWarning && !state.hasData)
              ? warningNoData?.call(context) ??
                  AppListView.builder(
                    itemCount: itemCount,
                    itemBuilder: (context, index) =>
                        itemBuilder(context, index, state),
                  )
              : (state.isLoading && !state.hasData)
                  ? loadingNoData?.call(context) ??
                      AppListView.builder(
                        itemCount: itemCount,
                        itemBuilder: (context, index) =>
                            itemBuilder(context, index, state),
                      )
                  : AppListView.builder(
                      itemCount: itemCount,
                      itemBuilder: (context, index) =>
                          itemBuilder(context, index, state),
                    ),
    );
  }
}
