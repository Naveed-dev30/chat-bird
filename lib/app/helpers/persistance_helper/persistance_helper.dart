import 'package:hive_flutter/hive_flutter.dart';

abstract class PersistanceHelper {
  Future<void> initialise();

  Future<bool> keyDoesExist(String key);

  Future<void> writeString(String key, String value);

  Future<void> writeNum(String key, num value);

  Future<void> writeObject(String key, Object value);

  Future<void> writeObjectList(String key, List<Object> value);

  Future<String?> getString(String key);

  Future<num?> getNum(String key);

  Future<bool?> getBool(String key);

  Future<void> writeBool(String key, bool value);

  Future<Object?> getObject(String key);

  Future<List<Object>?> getObjectList(String key);
}

/// [Implementation With Hive]
class HivePersistance implements PersistanceHelper {
  final imparativeValuesBox = 'imp_value_box';
  final _openBoxes = <String, Box>{};

  bool isBoxOpened(String boxName) {
    return _openBoxes.containsKey(boxName);
  }

  Box getOpenedBox(String boxName) {
    if (isBoxOpened(boxName)) {
      return _openBoxes[boxName]!;
    } else {
      throw Exception('Box not opened.');
    }
  }

  Future<Box?> openBox(String boxName) async {
    final box = await Hive.openBox(boxName);
    _openBoxes[boxName] = box;
    return box;
  }

  @override
  Future<num?> getNum(String key) async {
    if (!isBoxOpened(imparativeValuesBox)) {
      await openBox(imparativeValuesBox);
    }

    final box = getOpenedBox(imparativeValuesBox);
    return box.get(key);
  }

  @override
  Future<Object?> getObject(String key) async {
    if (!isBoxOpened(imparativeValuesBox)) {
      await openBox(imparativeValuesBox);
    }

    final box = getOpenedBox(imparativeValuesBox);
    return box.get(key);
  }

  @override
  Future<List<Object>?> getObjectList(String key) async {
    if (!isBoxOpened(key)) {
      await openBox(key);
    }

    final box = getOpenedBox(key);
    return box.values as List<Object>;
  }

  @override
  Future<String?> getString(String key) async {
    if (!isBoxOpened(imparativeValuesBox)) {
      await openBox(imparativeValuesBox);
    }

    final box = getOpenedBox(imparativeValuesBox);
    return box.get(key);
  }

  @override
  Future<void> initialise() async {
    await Hive.initFlutter();
  }

  @override
  Future<bool> keyDoesExist(String key) async {
    if (!isBoxOpened(imparativeValuesBox)) {
      await openBox(imparativeValuesBox);
    }

    final box = getOpenedBox(imparativeValuesBox);
    return box.containsKey(key);
  }

  @override
  Future<void> writeNum(String key, num value) async {
    if (!isBoxOpened(imparativeValuesBox)) {
      await openBox(imparativeValuesBox);
    }

    final box = getOpenedBox(imparativeValuesBox);
    await box.put(key, value);
  }

  @override
  Future<void> writeObject(String key, Object value) async {
    if (!isBoxOpened(imparativeValuesBox)) {
      await openBox(imparativeValuesBox);
    }

    final box = getOpenedBox(imparativeValuesBox);
    await box.put(key, value);
  }

  @override
  Future<void> writeObjectList(String key, List<Object> value) async {
    if (!isBoxOpened(key)) {
      await openBox(key);
    }

    final box = getOpenedBox(imparativeValuesBox);
    await box.put(key, value);
  }

  @override
  Future<void> writeString(String key, String value) async {
    if (!isBoxOpened(imparativeValuesBox)) {
      await openBox(imparativeValuesBox);
    }

    final box = getOpenedBox(imparativeValuesBox);
    await box.put(key, value);
  }

  @override
  Future<bool?> getBool(String key) async {
    if (!isBoxOpened(imparativeValuesBox)) {
      await openBox(imparativeValuesBox);
    }

    final box = getOpenedBox(imparativeValuesBox);
    return await box.get(key);
  }

  @override
  Future<void> writeBool(String key, bool value) async {
    if (!isBoxOpened(imparativeValuesBox)) {
      await openBox(imparativeValuesBox);
    }

    final box = getOpenedBox(imparativeValuesBox);
    await box.put(key, value);
  }
}
