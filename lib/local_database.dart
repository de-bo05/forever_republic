import 'package:hive_flutter/adapters.dart';


class LocalDatabase {
  static final LocalDatabase offlineDatabaseInstance = LocalDatabase.internal();

  factory LocalDatabase() => offlineDatabaseInstance;

  LocalDatabase.internal();

  Future<void> startHive() async {
    await interface().initFlutter();
  }

  Future<void> initializeAll() async {


  }

  Box getBox(String name) {
    return interface().box(name);
  }

  HiveInterface interface() {
    return Hive;
  }

  void firstTimeDefaultWrite() async {}
}
