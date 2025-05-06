import 'package:change_application_name/application.dart';

enum RoleModalMode {
  create,
  edit,
}

class RoleModal extends StatefulWidget {
  const RoleModal({
    super.key,
    required this.mode,
    this.role,
  });

  final RoleModalMode mode;
  final RoleEntity? role;

  @override
  State<RoleModal> createState() => _RoleModalState();
}

class _RoleModalState extends State<RoleModal> {
  final roleController = TextEditingController();

  // RoleEntity? newRole;
  // late PermissionTableSource permissionTableSource;

  List<PagePermissionEntity> _pagePermissions = List.empty();

  @override
  void initState() {
    super.initState();

    roleController.text = widget.role?.name ?? '';

    _pagePermissions = widget.role?.pagePermissions?.toList() ?? List.empty();

    // newRole = widget.role;
    // newRole = newRole?.copyWith(pagePermissions: []);

    // permissionTableSource = PermissionTableSource(
    //   context: context,
    //   items: widget.role?.pagePermissions ?? [],
    // );
  }

  @override
  Widget build(BuildContext context) {
    print(_pagePermissions[0].isVisible);
    return Dialog(
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
                label: 'Name',
                style: AppTextFieldStyle.outline,
                controller: roleController,
              ),
            ),
            Space.gap20,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5, top: 20),
                // child: _buildPermissionTable(
                //   context: context,
                //   role: widget.role,
                //   permissionTableSource: permissionTableSource,
                // ),
                child: _buildPermissionTable(),
              ),
            ),
            Space.gap20,
            Align(
              alignment: Alignment.bottomRight,
              child: AppButton(
                text: widget.mode == RoleModalMode.create ? 'Create' : 'Update',
                onPress: () {
                  // print('v: ${permissionTableSource.items[0].isVisible}');

                  final newRole = widget.role?.copyWith(
                    name: roleController.text,
                    pagePermissions: _pagePermissions,
                  );

                  Navigator.pop(context, newRole);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPermissionTable() {
    return ListView.builder(
        itemCount: _pagePermissions.length,
        itemBuilder: (_, index) {
          return Row(
            children: [
              AppText(
                _pagePermissions[index].page.toString(),
                style: AppTextStyleBuilder.header4.build(context),
              ),
              AppCheckbox(
                label: '',
                defaultValue: _pagePermissions[index].isVisible,
                onChanged: (b) {
                  _pagePermissions[index] =
                      _pagePermissions[index].copyWith(isVisible: b);
                },
              ),
              AppCheckbox(
                label: '',
                defaultValue: _pagePermissions[index].canCreate,
                onChanged: (b) {
                  _pagePermissions[index] =
                      _pagePermissions[index].copyWith(canCreate: b);
                },
              ),
              AppCheckbox(
                label: '',
                defaultValue: _pagePermissions[index].canUpdate,
                onChanged: (b) {
                  _pagePermissions[index] =
                      _pagePermissions[index].copyWith(canUpdate: b);
                },
              ),
              AppCheckbox(
                label: '',
                defaultValue: _pagePermissions[index].canDelete,
                onChanged: (v) {
                  _pagePermissions[index] =
                      _pagePermissions[index].copyWith(canDelete: v);
                },
              ),
            ],
          );
        });
  }
}

//   Widget _buildPermissionTable({
//     required BuildContext context,
//     required RoleEntity? role,
//     required PermissionTableSource permissionTableSource,
//   }) {
//     return AppTable(
//       width: 700,
//       height: 500,
//       headerNames: [
//         'Page',
//         'Visible',
//         'Create',
//         'Update',
//         'Delete',
//       ],
//       source: permissionTableSource,
//       headerTextStyle: AppTextStyleBuilder.header3.bold.build(context),
//     );
//   }
// }

class PermissionTableSource implements AppTableSource {
  PermissionTableSource({
    required this.context,
    required this.items,
  });

  final BuildContext context;
  List<PagePermissionEntity> items;

  @override
  AppTableCellContainer getCellContainer(int index) {
    var item = items[index];
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
            label: '',
            defaultValue: item.isVisible,
            onChanged: (v) {
              //items = item.copyWith(isVisible: v);
              print('isVisible: ${item.isVisible}');
            },
          ),
        ),
        AppTableCell(
          value: item.canCreate.toString(),
          widget: AppCheckbox(
            label: '',
            defaultValue: item.canCreate,
          ),
        ),
        AppTableCell(
          value: item.canUpdate.toString(),
          widget: AppCheckbox(
            label: '',
            defaultValue: item.canUpdate,
          ),
        ),
        AppTableCell(
          value: item.canDelete.toString(),
          widget: AppCheckbox(
            label: '',
            defaultValue: item.canDelete,
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
