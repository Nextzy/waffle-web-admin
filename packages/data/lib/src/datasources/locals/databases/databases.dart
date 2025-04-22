import 'package:core/core.dart' as core;
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

export 'key_value_database.dart';
export 'firestore_database_service.dart';

part 'generated/databases.g.dart';

class SettingTable extends Table {
  TextColumn get themeMode => text()();

  BoolColumn get isTapExited => boolean().withDefault(const Constant(false))();
}

class MovieTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [SettingTable, MovieTable])
class AppLocalDatabase extends _$AppLocalDatabase {
  AppLocalDatabase(super.e);

  static late final AppLocalDatabase instance;

  @override
  int get schemaVersion => 1;

  // @override
  // MigrationStrategy get migration => MigrationStrategy(
  //       onCreate: (Migrator m) async {
  //         await m.createAll();
  //       },
  //       onUpgrade: (Migrator m, int from, int to) async {
  //         if (from < 2) {
  //           // Migrate Version: 2
  //           // await m.addColumn(
  //           //     instance.settingTable, instance.settingTable.exited);
  //         }
  //       },
  //     );

  static void initDatabase({AppLocalDatabase? database}) {
    instance = database ??
        AppLocalDatabase(
          driftDatabase(
            name: 'change_application_name_database',
            web: DriftWebOptions(
              sqlite3Wasm: Uri.parse('sqlite3.wasm'),
              driftWorker: Uri.parse('drift_worker.js'),
              onResult: (result) {
                if (result.missingFeatures.isNotEmpty) {
                  core.Log.t(
                      'Using ${result.chosenImplementation} due to unsupported '
                      'browser features: ${result.missingFeatures}');
                }
              },
            ),
          ),
        );
  }

  Future<SettingTableData> loadSetting() async {
    List<SettingTableData> settingList = await managers.settingTable.get();
    if (settingList.isEmpty) {
      await managers.settingTable.create(
        (o) => o(
          themeMode: core.ThemeMode.system.toValueString(),
        ),
      );
      settingList = await managers.settingTable.get();
    }
    return settingList.first;
  }

  Future<void> deleteAllData() => transaction(() async {
        for (final table in allTables) {
          await customStatement('DELETE FROM ${table.actualTableName}');
        }
      });

  Future<void> updateTapExitApp(bool exit) => managers.settingTable.update(
        (o) => o(isTapExited: Value(exit)),
      );

  ///=============== CRUD Method =====================///
  Future<void> upsertMovieList(
    Iterable<MovieTableData> dataList,
  ) =>
      batch(
        (batch) {
          batch.insertAllOnConflictUpdate(
            movieTable,
            dataList.map(
              (data) => MovieTableCompanion.insert(
                id: data.id,
                name: data.name,
              ),
            ),
          );
        },
      );

  Future<void> upsertMovie(MovieTableData data) =>
      into(movieTable).insertOnConflictUpdate(
        MovieTableCompanion.insert(
          id: data.id,
          name: data.name,
        ),
      );

  Future<List<MovieTableData>> loadMovieList() => managers.movieTable.get();

  Future<MovieTableData?> loadMovie(String id) =>
      (select(movieTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
}
