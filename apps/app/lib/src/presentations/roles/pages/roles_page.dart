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
    extends AppPageBlocWidgetState<RolesPage, RolesBloc, RolesEntity?> {
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
  void initState() {
    super.initState();

    _getAllRoles();
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
    print('mydebug ${bloc.data?.roles}');

    return Container(
      color: context.theme.color.bg,
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
                identifier: 'create-role-button',
                startIcon: Assets.icon.plusRegular.keyName,
                text: 'Create Role',
                onPress: _onTapCreateRole,
              ),
            ],
          ),
          Expanded(
            child: Content(
              roles: bloc.data?.roles ?? [],
            ),
          ),
        ],
      ),
    );
  }

  void _getAllRoles() {
    bloc.addEvent(
      RolesEvent.getAllRoles,
    );
  }

  void _onTapCreateRole() {
    showDialog(
        context: context,
        builder: (context) {
          return RoleModal(
            mode: RoleModalMode.create,
          );
        }).then((v) {
      print('v: $v');
    });
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.roles,
  });

  final List<RoleEntity> roles;

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
                itemCount: roles.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    // leading: SizedBox(
                    //   width: 50,
                    //   child: AppCheckbox(label: ''),
                    // ),
                    title: AppText(
                      roles[index].name,
                      style: AppTextStyleBuilder.header4.build(context),
                    ),
                    // trailing: AppIconButton(
                    //   icon: Assets.icon.dotsThreeLight.keyName,
                    //   style: AppButtonStyle.text,
                    // ),
                    onTap: () {
                      _onTapEditRole(
                        context: context,
                        role: roles[index],
                      );
                    },
                  );
                }),
          ),
        ],
      ),
      // child: Placeholder(),
    );
  }

  void _onTapEditRole({
    required BuildContext context,
    RoleEntity? role,
  }) async {
    final res = await showDialog(
        context: context,
        builder: (context) {
          return RoleModal(
            mode: RoleModalMode.edit,
            role: role,
          );
        });
    print('res: $res');
  }
}
