import 'package:get_it/get_it.dart';

import '../../../core/config/constants.dart';
import '../../../mock/documents_remote_data_source.dart';
import '../data/datasources/documents_local_data_source.dart';
import '../data/datasources/documents_remote_data_source.dart';
import '../data/repositories/documents_repo_implementation.dart';
import '../domain/repositories/documents_repo.dart';
import '../domain/usecases/download_file.dart';
import '../domain/usecases/get_documents.dart';
import '../presentation/bloc/documents_bloc.dart';

Future<void> initDocumentsBlocs(GetIt sl) async {
  // App Logic
  sl.registerFactory(() => DocumentsBloc(getDocuments: sl(),downloadFile: sl()));
}

Future<void> initDocuments(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => GetDocuments(sl()));
  sl.registerLazySingleton(() => DownloadFile(sl()));
  // Repositories
  sl.registerLazySingleton<DocumentsRepository>(
      () => DocumentsRepoImplementation(sl(),sl()));
  // Data Sources
  if (kUseMockData) {
    sl.registerLazySingleton<DocumentsRemoteDataSource>(
      () => MockDocumentsRemoteDataSourceImplementation(sl(),sl()),
    );
  } else {
    sl.registerLazySingleton<DocumentsRemoteDataSource>(
      () => DocumentsRemoteDataSourceImplementation(sl()),
    );
  }
  sl.registerLazySingleton<DocumentsLocalDataSource>(
        () => DocumentsLocalDataSourceImplementation(sl()),
  );
}
