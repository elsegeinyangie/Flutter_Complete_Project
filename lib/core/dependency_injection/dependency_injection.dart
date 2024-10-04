import 'package:dio/dio.dart';
import 'package:flutter_complete_project/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:flutter_complete_project/features/sign_up/logic/cubit/sign_up_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../../features/login/data/repos/login_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {

  //Dio and ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Login
    getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
    getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //SignUp
    getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
    getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

}
