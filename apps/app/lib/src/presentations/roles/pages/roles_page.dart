import 'package:change_application_name/application.dart';

enum RolesPageEvent {
  showResult,
  finishRoleModal,
  createRoleSuccess,
  updateRoleSuccess,
  deleteRoleSuccess,
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
  ) async {
    switch (event) {
      case RolesPageEvent.showResult:
        final resultMessage = data as String;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(resultMessage),
            duration: Duration(seconds: 5),
          ),
        );
      case RolesPageEvent.finishRoleModal:
        final role = data as RoleEntity;
        print('finish role modal: $role');

        final RoleEntity? response = await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return RoleModal(
                mode: RoleModalMode.edit,
                role: role,
              );
            });

        print('response: $response');

        if (response != null) _updateRole(roleId: role.roleId ?? '');
      case RolesPageEvent.createRoleSuccess:
        _getAllRoles();
      case RolesPageEvent.updateRoleSuccess:
        _getAllRoles();
      case RolesPageEvent.deleteRoleSuccess:
        _getAllRoles();
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
            child: RolesContent(
              roles: bloc.data?.roles ?? [],
              onTapEditRole: (role) => _onTapEditRole(role: role),
              onTapDeleteRole: (role) => _onTapDeleteRole(role: role),
            ),
          ),
        ],
      ),
    );
  }

  void _onTapCreateRole() async {
    final RoleEntity? response = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return RoleModal(
            mode: RoleModalMode.create,
            role: RoleEntity(
              pagePermission: PagePermissionEntity(
                analytics: PermissionEntity(page: 'Analytics'),
                campaigns: PermissionEntity(page: 'Campaigns'),
                games: PermissionEntity(page: 'Games'),
                customers: PermissionEntity(page: 'Customers'),
                rewardsStock: PermissionEntity(page: 'Rewards Stock'),
                consentAndPolicy: PermissionEntity(page: 'Consent And Policy'),
                allGames: PermissionEntity(page: 'All Games'),
                users: PermissionEntity(page: 'Users'),
                roles: PermissionEntity(page: 'Roles'),
                billing: PermissionEntity(page: 'Billing'),
              ),
            ),
          );
        });

    print('response: $response');

    if (response != null) _createRole();
  }

  void _onTapEditRole({
    required RoleEntity role,
  }) {
    _getRole();
  }

  void _onTapDeleteRole({
    required RoleEntity role,
  }) {
    _deleteRole(roleId: role.roleId ?? '');
  }

  void _getAllRoles() {
    bloc.addEvent(
      RolesEvent.getAllRoles,
    );
  }

  void _getRole() {
    bloc.addEvent(
      RolesEvent.getRole,
    );
  }

  void _createRole() {
    bloc.addEvent(
      RolesEvent.createRole,
    );
  }

  void _updateRole({
    required String roleId,
  }) {
    bloc.addEvent(
      RolesEvent.updateRole,
      data: (roleId: roleId),
    );
  }

  void _deleteRole({
    required String roleId,
  }) {
    bloc.addEvent(
      RolesEvent.deleteRole,
      data: (roleId: roleId),
    );
  }
}

class RolesContent extends StatelessWidget {
  const RolesContent({
    super.key,
    required this.roles,
    required this.onTapEditRole,
    required this.onTapDeleteRole,
  });

  final List<RoleEntity> roles;

  final Function(RoleEntity role) onTapEditRole;
  final Function(RoleEntity role) onTapDeleteRole;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      identifier: 'roles-view',
      child: Container(
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
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          roles[index].name,
                          style: AppTextStyleBuilder.header4.build(context),
                        ),
                        Row(
                          children: [
                            AppIconButton(
                              identifier: 'edit-button',
                              icon: Assets.icon.pencilLineFilled.keyName,
                              style: AppButtonStyle.text,
                              onPress: () => onTapEditRole(roles[index]),
                            ),
                            Space.gap10,
                            AppIconButton(
                              identifier: 'delete-button',
                              icon: Assets.icon.trashSimpleFilled.keyName,
                              style: AppButtonStyle.text,
                              onPress: () => onTapDeleteRole(roles[index]),
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
