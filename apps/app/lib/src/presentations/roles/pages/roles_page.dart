import 'package:change_application_name/application.dart';

enum RolesPageEvent {
  showResult,
}

@RoutePage()
class RolesPage extends AppPage implements AutoRouteWrapper {
  const RolesPage({super.key});

  @override
  State<RolesPage> createState() => _RolesPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => RolesBloc(),
      child: this,
    );
  }
}

class _RolesPageState
    extends AppPageBlocWidgetState<RolesPage, RolesBloc, dynamic> {
  void onListenerEvent(
    BuildContext context,
    Object event,
    Object? data,
  ) {
    switch (event) {
      case RolesPageEvent.showResult:
        final resultMessage = data as String;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(resultMessage),
            duration: Duration(seconds: 5),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildScaffoldWithBloc(
      listenEvent: onListenerEvent,
      body: (context, state) {
        if (state.isLoading) return Center(child: AppCircularLoading());
        if (state.isFail) return AppEmpty();

        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
    final items = List.generate(20, (index) => 'Item $index');

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                'Roles',
                style: AppTextStyleBuilder.header3.bold.build(context),
              ),
              AppButton(
                startIcon: Assets.icon.plusRegular.keyName,
                text: 'Create Role',
              ),
            ],
          ),
          Expanded(
            child: Content(items: items),
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            'Roles Name',
            style: AppTextStyleBuilder.header5.bold.build(context),
          ),
          AppDivider(color: Colors.black),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    // leading: SizedBox(
                    //   width: 50,
                    //   child: AppCheckbox(label: ''),
                    // ),
                    title: AppText(
                      items[index],
                      style: TextStyle(
                        color: context.theme.color.textSecondary,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    // trailing: AppIconButton(
                    //   icon: Assets.icon.dotsThreeLight.keyName,
                    //   style: AppButtonStyle.text,
                    // ),
                    onTap: () => {},
                  );
                }),
          ),
        ],
      ),
      // child: Placeholder(),
    );
  }
}
