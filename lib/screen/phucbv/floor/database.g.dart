// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorDemoStudentDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$DemoStudentDatabaseBuilder databaseBuilder(String name) =>
      _$DemoStudentDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$DemoStudentDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$DemoStudentDatabaseBuilder(null);
}

class _$DemoStudentDatabaseBuilder {
  _$DemoStudentDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$DemoStudentDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$DemoStudentDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<DemoStudentDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$DemoStudentDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$DemoStudentDatabase extends DemoStudentDatabase {
  _$DemoStudentDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  StudentDAO? _studentDAOInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `StudentModel` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `age` INTEGER NOT NULL, `address` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  StudentDAO get studentDAO {
    return _studentDAOInstance ??= _$StudentDAO(database, changeListener);
  }
}

class _$StudentDAO extends StudentDAO {
  _$StudentDAO(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _studentModelInsertionAdapter = InsertionAdapter(
            database,
            'StudentModel',
            (StudentModel item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'age': item.age,
                  'address': item.address
                }),
        _studentModelUpdateAdapter = UpdateAdapter(
            database,
            'StudentModel',
            ['id'],
            (StudentModel item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'age': item.age,
                  'address': item.address
                }),
        _studentModelDeletionAdapter = DeletionAdapter(
            database,
            'StudentModel',
            ['id'],
            (StudentModel item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'age': item.age,
                  'address': item.address
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<StudentModel> _studentModelInsertionAdapter;

  final UpdateAdapter<StudentModel> _studentModelUpdateAdapter;

  final DeletionAdapter<StudentModel> _studentModelDeletionAdapter;

  @override
  Future<List<StudentModel>> getListStudent() async {
    return _queryAdapter.queryList('SELECT * FROM StudentModel',
        mapper: (Map<String, Object?> row) => StudentModel(
            row['id'] as String,
            row['name'] as String,
            row['age'] as int,
            row['address'] as String));
  }

  @override
  Future<void> insertStudentModel(List<StudentModel> list) async {
    await _studentModelInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateStudentModel(StudentModel studentModel) async {
    await _studentModelUpdateAdapter.update(
        studentModel, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteStudentModel(StudentModel studentModel) async {
    await _studentModelDeletionAdapter.delete(studentModel);
  }
}
