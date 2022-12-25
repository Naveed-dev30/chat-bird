// Mocks generated by Mockito 5.3.2 from annotations
// in chat_bird/test/mocks/hive_persistance_mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:chat_bird/app/helpers/persistance_helper/persistance_helper.dart'
    as _i3;
import 'package:hive_flutter/hive_flutter.dart' as _i2;
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

class _FakeBox_0<E> extends _i1.SmartFake implements _i2.Box<E> {
  _FakeBox_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeObject_1 extends _i1.SmartFake implements Object {
  _FakeObject_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [HivePersistance].
///
/// See the documentation for Mockito's code generation for more information.
class MockHivePersistance extends _i1.Mock implements _i3.HivePersistance {
  @override
  String get imparativeValuesBox => (super.noSuchMethod(
        Invocation.getter(#imparativeValuesBox),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  bool isBoxOpened(String? boxName) => (super.noSuchMethod(
        Invocation.method(
          #isBoxOpened,
          [boxName],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i2.Box<dynamic> getOpenedBox(String? boxName) => (super.noSuchMethod(
        Invocation.method(
          #getOpenedBox,
          [boxName],
        ),
        returnValue: _FakeBox_0<dynamic>(
          this,
          Invocation.method(
            #getOpenedBox,
            [boxName],
          ),
        ),
        returnValueForMissingStub: _FakeBox_0<dynamic>(
          this,
          Invocation.method(
            #getOpenedBox,
            [boxName],
          ),
        ),
      ) as _i2.Box<dynamic>);
  @override
  _i4.Future<_i2.Box<dynamic>> openBox(String? boxName) => (super.noSuchMethod(
        Invocation.method(
          #openBox,
          [boxName],
        ),
        returnValue: _i4.Future<_i2.Box<dynamic>>.value(_FakeBox_0<dynamic>(
          this,
          Invocation.method(
            #openBox,
            [boxName],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Box<dynamic>>.value(_FakeBox_0<dynamic>(
          this,
          Invocation.method(
            #openBox,
            [boxName],
          ),
        )),
      ) as _i4.Future<_i2.Box<dynamic>>);
  @override
  _i4.Future<num> getNum(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getNum,
          [key],
        ),
        returnValue: _i4.Future<num>.value(0),
        returnValueForMissingStub: _i4.Future<num>.value(0),
      ) as _i4.Future<num>);
  @override
  _i4.Future<Object> getObject(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getObject,
          [key],
        ),
        returnValue: _i4.Future<Object>.value(_FakeObject_1(
          this,
          Invocation.method(
            #getObject,
            [key],
          ),
        )),
        returnValueForMissingStub: _i4.Future<Object>.value(_FakeObject_1(
          this,
          Invocation.method(
            #getObject,
            [key],
          ),
        )),
      ) as _i4.Future<Object>);
  @override
  _i4.Future<List<Object>> getObjectList(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getObjectList,
          [key],
        ),
        returnValue: _i4.Future<List<Object>>.value(<Object>[]),
        returnValueForMissingStub: _i4.Future<List<Object>>.value(<Object>[]),
      ) as _i4.Future<List<Object>>);
  @override
  _i4.Future<String> getString(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getString,
          [key],
        ),
        returnValue: _i4.Future<String>.value(''),
        returnValueForMissingStub: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<void> initialise() => (super.noSuchMethod(
        Invocation.method(
          #initialise,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<bool> keyDoesExist(String? key) => (super.noSuchMethod(
        Invocation.method(
          #keyDoesExist,
          [key],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<void> writeNum(
    String? key,
    num? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #writeNum,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> writeObject(
    String? key,
    Object? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #writeObject,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> writeObjectList(
    String? key,
    List<Object>? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #writeObjectList,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> writeString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #writeString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
