// Mocks generated by Mockito 5.3.2 from annotations
// in chat_bird/test/mocks/local_data_stores/splash_local_data_store/splash_local_data_store_mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:chat_bird/app/features/splash/data/data_store/local/splash_local_data_store.dart'
    as _i3;
import 'package:chat_bird/app/helpers/persistance_helper/persistance_helper.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakePersistanceHelper_0 extends _i1.SmartFake
    implements _i2.PersistanceHelper {
  _FakePersistanceHelper_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SplashLocalDataStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockSplashLocalDataStore extends _i1.Mock
    implements _i3.SplashLocalDataStore {
  @override
  _i2.PersistanceHelper get persistanceHelper => (super.noSuchMethod(
        Invocation.getter(#persistanceHelper),
        returnValue: _FakePersistanceHelper_0(
          this,
          Invocation.getter(#persistanceHelper),
        ),
        returnValueForMissingStub: _FakePersistanceHelper_0(
          this,
          Invocation.getter(#persistanceHelper),
        ),
      ) as _i2.PersistanceHelper);
  @override
  _i4.Future<bool> isOnboardSeen() => (super.noSuchMethod(
        Invocation.method(
          #isOnboardSeen,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<void> setOnboardSeen() => (super.noSuchMethod(
        Invocation.method(
          #setOnboardSeen,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
