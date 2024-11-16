import 'package:faker/faker.dart';

import '../features/Documents/data/datasources/documents_remote_data_source.dart';
import '../features/Documents/domain/entities/documents.dart';

class MockDocumentsRemoteDataSourceImplementation
    implements DocumentsRemoteDataSource {
  const MockDocumentsRemoteDataSourceImplementation(this._faker);

  final Faker _faker;

  @override
  Future<Documents> getDocuments({required Map<String, dynamic> values}) async {
    // TODO: implement getDocuments
    throw UnimplementedError();
  }
}
