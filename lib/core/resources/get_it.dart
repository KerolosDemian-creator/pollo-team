import 'package:get_it/get_it.dart';
import 'package:pollo/core/api/api_service.dart';
import 'package:pollo/core/api/dio_factory.dart';
import 'package:pollo/features/home/data/repos/home_repo_imp.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<ApiService>(
    () => ApiService(dio: DioFactory.instance),
  );
  getIt.registerLazySingleton<HomeRepoImp>(
    () => HomeRepoImp(apiService: getIt<ApiService>()),
  );
}
