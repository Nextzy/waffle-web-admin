import 'package:drift/drift.dart';
import 'package:change_application_name/application.dart';

class SettingBloc extends BlocBase<SettingTableData> {
  SettingBloc({
    required SettingTableData initialSetting,
    AppLocalDatabase? database,
  })  : _database = database ?? AppLocalDatabase.instance,
        super(initialSetting);

  final AppLocalDatabase _database;

  ThemeMode get themeMode => state.themeMode.toEnum(
        ThemeMode.values,
        defaultValue: MyApplication.defaultThemeMode,
      );

  Future<void> updateSettings(
      Insertable<SettingTableData> Function(
        $$SettingTableTableUpdateCompanionBuilder o,
      ) update) async {
    await _database.managers.settingTable.update(update);
    final settingList = (await _database.managers.settingTable.get());
    emit(settingList[0]);
  }
}
