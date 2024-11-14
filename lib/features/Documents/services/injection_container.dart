import 'package:get_it/get_it.dart';

import '../data/datasources/documents_remote_data_source.dart';
import '../data/repositories/documents_repo_implementation.dart';
import '../domain/repositories/documents_repo.dart';
import '../domain/usecases/get_documents.dart';

Future<void> initDocumentsBlocs(GetIt sl) async {
  // App Logic
}

Future<void> initDocuments(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => GetDocuments(sl()));
  // Repositories
  sl.registerLazySingleton<DocumentsRepository>(() => DocumentsRepoImplementation(sl()));
  // Data Sources
  sl.registerLazySingleton<DocumentsRemoteDataSource>(
        () => DocumentsRemoteDataSourceImplementation(sl()),
  );
}
