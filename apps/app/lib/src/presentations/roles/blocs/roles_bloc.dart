import 'package:change_application_name/application.dart';

enum RolesEvent {
  initial,
  getAllRoles,
  getRole,
  createRole,
  updateRole,
  deleteRole,
}

class RolesBloc extends AppBloc<RolesEvent, RolesEntity> {
  RolesBloc({
    GetAllRolesUsecase? getAllRolesUsecase,
    GetRoleUsecase? getRoleUsecase,
    CreateRoleUsecase? createRoleUsecase,
    UpdateRoleUsecase? updateRoleUsecase,
    DeleteRoleUsecase? deleteRoleUsecase,
  })  : _getAllRolesUsecase = getAllRolesUsecase ?? GetAllRolesUsecase(),
        _getRoleUsecase = getRoleUsecase ?? GetRoleUsecase(),
        _createRoleUsecase = createRoleUsecase ?? CreateRoleUsecase(),
        _updateRoleUsecase = updateRoleUsecase ?? UpdateRoleUsecase(),
        _deleteRoleUsecase = deleteRoleUsecase ?? DeleteRoleUsecase();

  final GetAllRolesUsecase _getAllRolesUsecase;
  final GetRoleUsecase _getRoleUsecase;
  final CreateRoleUsecase _createRoleUsecase;
  final UpdateRoleUsecase _updateRoleUsecase;
  final DeleteRoleUsecase _deleteRoleUsecase;

  @override
  Future<void> onBlocEvent(BlocEvent<RolesEvent> event) async {
    switch (event.name) {
      case RolesEvent.initial:
        return;
      case RolesEvent.getAllRoles:
        return _getAllRoles();
      case RolesEvent.getRole:
        return _getRole();
      case RolesEvent.createRole:
        return _createRole();
      case RolesEvent.updateRole:
        final data = event.data as ({
          String roleId,
        });

        return _updateRole(
          roleId: data.roleId,
        );
      case RolesEvent.deleteRole:
        final data = event.data as ({
          String roleId,
        });

        return _deleteRole(
          roleId: data.roleId,
        );
    }
  }

  Future<void> _getAllRoles() async {
    var jsonRpcResponse = await _getAllRolesUsecase();

    _showResult(jsonRpcResponse);

    if (jsonRpcResponse.hasResult) {
      final roles = jsonRpcResponse.result?.roles
          ?.map((e) => RoleEntity.fromResponse(e))
          .toList();

      final rolesData = RolesEntity(
        roles: roles,
      );

      emitSuccess(rolesData);
    }
  }

  Future<void> _getRole() async {
    var jsonRpcResponse = await _getRoleUsecase(
      roleId: '',
    );

    _showResult(jsonRpcResponse);

    if (jsonRpcResponse.hasResult) {
      final action = jsonRpcResponse.result!.action!;

      final role = RoleEntity(
        roleId: '',
        name: jsonRpcResponse.result?.role?.name ?? '',
        pagePermission: PagePermissionEntity.fromResponse(action),
      );

      emitEvent(
        RolesPageEvent.finishRoleModal,
        role,
      );
    }
  }

  Future<void> _createRole() async {
    var jsonRpcResponse = await _createRoleUsecase();

    _showResult(jsonRpcResponse);

    if (jsonRpcResponse.hasResult) {
      emitEvent(
        RolesPageEvent.createRoleSuccess,
      );
    }
  }

  Future<void> _updateRole({
    required roleId,
  }) async {
    var jsonRpcResponse = await _updateRoleUsecase(
      roleId: roleId,
    );

    _showResult(jsonRpcResponse);

    if (jsonRpcResponse.hasResult) {
      emitEvent(
        RolesPageEvent.updateRoleSuccess,
      );
    }
  }

  Future<void> _deleteRole({
    required roleId,
  }) async {
    var jsonRpcResponse = await _deleteRoleUsecase(
      roleId: roleId,
    );

    _showResult(jsonRpcResponse);

    if (jsonRpcResponse.hasResult) {
      emitEvent(
        RolesPageEvent.deleteRoleSuccess,
      );
    }
  }

  void _showResult(JsonRpcResponse jsonRpcResponse) {
    print('jsonRpcResponse: $jsonRpcResponse');

    final resultMessage = jsonRpcResponse.hasResult
        ? jsonRpcResponse.result.toString()
        : jsonRpcResponse.error?.userMessage ?? 'error';

    print('result msg: $resultMessage');

    // emitEvent(
    //   RolesPageEvent.showResult,
    //   resultMessage,
    // );
  }
}
