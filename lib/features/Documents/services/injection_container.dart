import 'package:get_it/get_it.dart';

import '../../../core/config/constants.dart';
import '../../../mock/documents_remote_data_source.dart';
import '../data/datasources/documents_remote_data_source.dart';
import '../data/repositories/documents_repo_implementation.dart';
import '../domain/repositories/documents_repo.dart';
import '../domain/usecases/get_documents.dart';
import '../presentation/bloc/documents_bloc.dart';

Future<void> initDocumentsBlocs(GetIt sl) async {
  // App Logic
  sl.registerFactory(() => DocumentsBloc(getDocuments: sl()));
}

Future<void> initDocuments(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => GetDocuments(sl()));
  // Repositories
  sl.registerLazySingleton<DocumentsRepository>(
      () => DocumentsRepoImplementation(sl()));
  // Data Sources
  if (kUseMockData) {
    sl.registerLazySingleton<DocumentsRemoteDataSource>(
      () => MockDocumentsRemoteDataSourceImplementation(sl()),
    );
  } else {
    sl.registerLazySingleton<DocumentsRemoteDataSource>(
      () => DocumentsRemoteDataSourceImplementation(sl()),
    );
  }
}
