import 'package:chat_bird/app/abstraction/repository.dart';

abstract class Usecase<Target, Params> {
  Repository get repository;

  Future<Target> call(Params params);
}
