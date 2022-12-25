import 'package:chat_bird/app/abstraction/data_store.dart';

abstract class RemoteDataStore extends DataStore {}

class NoRemoteDataStore extends RemoteDataStore {}
