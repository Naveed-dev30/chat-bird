import 'package:chat_bird/app/helpers/persistance_helper/persistance_helper.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/hive_persistance/hive_persistance_mock.mocks.dart';

void main() {
  final PersistanceHelper persistanceHelper = MockHivePersistance();

  test(
    'description',
    () {
      persistanceHelper.initialise();
    },
  );
}
