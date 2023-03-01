import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../bloc/form_bloc.dart';
import '../api/api.dart';
import '../db/local_repository.dart';


final GetIt di = GetIt.instance;

void setup() {
  di.registerLazySingleton(() => FormApi(Dio(BaseOptions(connectTimeout: const Duration(seconds: 60)))));
  di.registerLazySingleton(() => FormBloc(LocalDb()));
}
