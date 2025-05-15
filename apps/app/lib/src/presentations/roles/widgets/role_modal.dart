import 'package:change_application_name/application.dart';

enum RoleModalMode {
  create,
  edit,
}

class RoleModal extends StatefulWidget {
  const RoleModal({
    super.key,
    required this.mode,
    required this.role,
  });

  final RoleModalMode mode;
  final RoleEntity role;

  @override
  State<RoleModal> createState() => _RoleModalState();
}

class _RoleModalState extends State<RoleModal> {
  final _roleController = TextEditingController();

  late final PermissionTableSource _permissionTableSource;

  @override
  void initState() {
    super.initState();

    _roleController.text = widget.role.name ?? '';

    final pagePermission = widget.role.pagePermission!;
    _permissionTableSource = PermissionTableSource(
      context,
      items: [
        pagePermission.analytics!,
        pagePermission.campaigns!,
        pagePermission.games!,
        pagePermission.customers!,
        pagePermission.rewardsStock!,
        pagePermission.consentAndPolicy!,
        pagePermission.allGames!,
        pagePermission.users!,
        pagePermission.roles!,
        pagePermission.billing!,
      ],
      // items: widget.role?.pagePermissions?.toList() ?? [],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      identifier: 'role-modal',
      child: Dialog(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 750,
          height: 700,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: AppTextField(
                  identifier: 'name-text-field',
                  label: 'Name',
                  style: AppTextFieldStyle.outline,
                  controller: _roleController,
                  onTextChange: (text) {
                    setState(() {});
                  },
                ),
              ),
              Space.gap20,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 20),
                  child: _buildPermissionTable(
                    role: widget.role,
                    permissionTableSource: _permissionTableSource,
                  ),
                ),
              ),
              Space.gap20,
              _buildButtons(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppButton(
          identifier: 'cancel-button',
          text: 'Cancel',
          onPress: () => Navigator.pop(context),
        ),
        Space.gap20,
        AppButton(
          identifier: widget.mode == RoleModalMode.create
              ? 'create-button'
              : 'update-button',
          text: widget.mode == RoleModalMode.create ? 'Create' : 'Update',
          disabled: _roleController.text.isEmpty,
          onPress: () {
            final newRole = RoleEntity(
              name: _roleController.text,
              pagePermission: PagePermissionEntity(
                analytics: _permissionTableSource.items[0],
                campaigns: _permissionTableSource.items[1],
                games: _permissionTableSource.items[2],
                customers: _permissionTableSource.items[3],
                rewardsStock: _permissionTableSource.items[4],
                consentAndPolicy: _permissionTableSource.items[5],
                allGames: _permissionTableSource.items[6],
                users: _permissionTableSource.items[7],
                roles: _permissionTableSource.items[8],
                billing: _permissionTableSource.items[9],
              ),
              // pagePermission: _permissionTableSource.items,
            );

            Navigator.pop(context, newRole);
          },
        ),
      ],
    );
  }

  Widget _buildPermissionTable({
    required RoleEntity? role,
    required PermissionTableSource permissionTableSource,
  }) {
    return AppTable(
      width: 700,
      height: 500,
      headerNames: [
        'Page',
        'Visible',
        'Create',
        'Update',
        'Delete',
      ],
      source: permissionTableSource,
      headerTextStyle: AppTextStyleBuilder.header3.bold.build(context),
    );
  }
}

class PermissionTableSource implements AppTableSource {
  PermissionTableSource(
    this.context, {
    required this.items,
  });

  final BuildContext context;
  final List<PermissionEntity> items;

  @override
  AppTableCellContainer getCellContainer(int index) {
    var item = items[index];
    var pageIdentifier = item.page.removeWhiteSpace.toLowerCase();

    return AppTableCellContainer(
      cells: [
        AppTableCell(
          value: item.page.toString(),
          widget: AppText(
            item.page,
            style: AppTextStyleBuilder.header4.build(context),
          ),
        ),
        AppTableCell(
          value: item.isVisible.toString(),
          widget: AppCheckbox(
            identifier: '$pageIdentifier-visible-checkbox',
            label: '',
            defaultValue: item.isVisible,
            onChanged: (b) {
              items[index] = items[index].copyWith(
                isVisible: b,
              );
            },
          ),
        ),
        AppTableCell(
          value: item.canCreate.toString(),
          widget: AppCheckbox(
            identifier: '$pageIdentifier-create-checkbox',
            label: '',
            defaultValue: item.canCreate,
            onChanged: (b) {
              items[index] = items[index].copyWith(
                canCreate: b,
              );
            },
          ),
        ),
        AppTableCell(
          value: item.canUpdate.toString(),
          widget: AppCheckbox(
            identifier: '$pageIdentifier-update-checkbox',
            label: '',
            defaultValue: item.canUpdate,
            onChanged: (b) {
              items[index] = items[index].copyWith(
                canUpdate: b,
              );
            },
          ),
        ),
        AppTableCell(
          value: item.canDelete.toString(),
          widget: AppCheckbox(
            identifier: '$pageIdentifier-delete-checkbox',
            label: '',
            defaultValue: item.canDelete,
            onChanged: (b) {
              items[index] = items[index].copyWith(
                canDelete: b,
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  List<AppTableCellContainer> getCellContainers() {
    final List<AppTableCellContainer> cellContainers = [];

    for (int i = 0; i < rowCount; i++) {
      final cellContainer = getCellContainer(i);
      cellContainers.add(cellContainer);
    }

    return cellContainers;
  }

  @override
  int get rowCount => items.length;
}
