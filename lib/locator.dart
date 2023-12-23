import 'package:assigment_1/src/data/abstract_repository/repository.dart';
import 'package:assigment_1/src/data/repository/repository_impl.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory<Repository>(() => RepositoryImpl());
}