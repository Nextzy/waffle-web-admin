import 'package:change_application_name/application.dart';
import 'package:change_application_name/src/domain/roles/entities/roles_entity.dart';

enum RolesEvent {
  initial,
  getAllRoles,
}

class RolesBloc extends AppBloc<RolesEvent, RolesEntity> {
  RolesBloc({
    GetAllRolesUsecase? getAllRolesUsecase,
  }) : _getAllRolesUsecase = getAllRolesUsecase ?? GetAllRolesUsecase();

  final GetAllRolesUsecase _getAllRolesUsecase;

  @override
  Future<void> onBlocEvent(BlocEvent<RolesEvent> event) async {
    switch (event.name) {
      case RolesEvent.initial:
        return;
      case RolesEvent.getAllRoles:
        return _getAllRoles();
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

  void _showResult(JsonRpcResponse jsonRpcResponse) {
    print('jsonRpcResponse: $jsonRpcResponse');

    final resultMessage = jsonRpcResponse.hasResult
        ? jsonRpcResponse.result.toString()
        : jsonRpcResponse.error?.userMessage ?? 'error';

    print('result msg: $resultMessage');

    emitEvent(
      RolesPageEvent.showResult,
      resultMessage,
    );
  }
}
