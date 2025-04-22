import 'package:change_application_name/application.dart';

enum HomePageEvent { yourEvent }

@RoutePage()
class HomePage extends AppPage implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(),
      child: this,
    );
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState
    extends AppPageBlocWidgetState<HomePage, HomePageBloc, HomeEntity?> {
  void onListenerEvent(
    BuildContext context,
    Object event,
    Object? data,
  ) {
    switch (event) {
      case HomePageEvent.yourEvent:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  @override
  Widget build(BuildContext context) => ExitApp(
        onExit: () async {
          await AppLocalDatabase.instance.updateTapExitApp(true);
        },
        child: buildScaffoldWithBloc(
          listenEvent: onListenerEvent,
          appBar: (context, state) => AppTopNavigationBar(
            type: AppNavigationType.brand,
            title: 'Demo Application',
          ),
          floatingButton: (context, state) => FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          body: (context, state) => buildResponsive(
            child: (platform, breakpoint) => ContainerLayout(
              alignment: Alignment.center,
              child: ColumnLayout(
                scrollable: true,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                padding: Space.insetAll16,
                gap: 40,
                children: [
                  RowLayout(
                    gap: 20,
                    children: [
                      AppButton(
                        text: 'Show Lock Modal',
                        onPress: () {
                          AppLoadingDialog.showFullLoadingLocked(
                            context,
                            title: 'We\'re creating your account...',
                          );
                          Future.delayed(
                            Duration(seconds: 3),
                            () => AppLoadingDialog.dismissAll(context),
                          );
                        },
                      ),
                      AppButton(
                        text: 'Show Modal',
                        onPress: () {
                          for (int i = 1; i <= 5; i++) {
                            AppLoadingDialog.showFullLoadingCancellable(
                              context,
                              title: 'We\'re creating your account...',
                            );
                          }
                          Future.delayed(
                            Duration(seconds: 3),
                            () => AppLoadingDialog.dismissAll(context),
                          );
                        },
                      ),
                    ],
                  ),
                  AppButton(
                    text: 'Show Modal',
                    onPress: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (builderContext) => AppModal(
                          title: 'Short descriptive message',
                          description:
                              'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                          feedbackState: FeedbackState.info,
                          contentAlign: AppModalContentAlign.start,
                          actionAlign: AppModalActionAlign.start,
                          buttonPrimaryText: 'OK',
                          buttonSecondaryText: 'Cancel',
                          onPrimaryPress: () {
                            Log.i('Tap');
                          },
                          onSecondaryPress: () {
                            Log.i('Tap');
                          },
                        ),
                      );
                    },
                  ),
                  ColumnLayout(
                    mainAxisSize: MainAxisSize.min,
                    foregroundColor: Colors.red.withValues(alpha: 0.1),
                    backgroundColor: Colors.amber,
                    padding: Space.insetAll16,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    gap: 20,
                    dropShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        spreadRadius: -2,
                        offset: const Offset(0, 4),
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                      BoxShadow(
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                        spreadRadius: -2,
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                    ],
                    innerShadow: [
                      BoxShadow(
                        color: Colors.white.withValues(alpha: 0.5),
                        blurRadius: 12,
                        spreadRadius: -8,
                      ),
                    ],
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                      AppText(
                        'You have pushed the button this many times:',
                        style: AppTextStyleBuilder.ui.s14.colorPrimary
                            .build(context),
                      ),
                      ContentSafeBuilder(
                          content: bloc.number,
                          builder: (context, state) {
                            return AppText(
                              '${state.data}',
                              style: AppTextStyleBuilder.header.s24.colorPrimary
                                  .build(context),
                            );
                          }),
                    ],
                  ),
                  ColumnLayout(
                    mainAxisSize: MainAxisSize.min,
                    backgroundColor: Colors.amber,
                    padding: Space.insetAll16,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    gap: 20,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                      AppText(
                        '✅ ♥️ ⭐️ 🌍 You have pushed the button this many times:',
                        style: AppTextStyleBuilder.ui.s14.colorPrimary
                            .build(context),
                      ),
                      ContentSafeBuilder(
                          content: bloc.number,
                          builder: (context, state) {
                            return AppText(
                              '${state.data}',
                              style: AppTextStyleBuilder.header.s24.colorPrimary
                                  .build(context),
                            );
                          }),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  void _incrementCounter() {
    bloc.addEvent(HomeBlocEvent.tapAddNumber);
  }
}
