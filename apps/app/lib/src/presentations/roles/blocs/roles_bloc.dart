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
  })  : _getAllRolesUsecase = getAllRolesUsecase ?? GetAllRolesUsecase(),
        _getRoleUsecase = getRoleUsecase ?? GetRoleUsecase();

  final GetAllRolesUsecase _getAllRolesUsecase;
  final GetRoleUsecase _getRoleUsecase;

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
        return _updateRole();
      case RolesEvent.deleteRole:
        return _deleteRole();
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
    emitEvent(
      RolesPageEvent.createRoleSuccess,
    );
  }

  Future<void> _updateRole() async {
    emitEvent(
      RolesPageEvent.updateRoleSuccess,
    );
  }

  Future<void> _deleteRole() async {
    emitEvent(
      RolesPageEvent.deleteRoleSuccess,
    );
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
