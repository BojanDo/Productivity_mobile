import 'package:faker/faker.dart';

import '../features/Documents/data/datasources/documents_remote_data_source.dart';
import '../features/Documents/domain/entities/documents.dart';

class MockDocumentsRemoteDataSourceImplementation
    implements DocumentsRemoteDataSource {
  MockDocumentsRemoteDataSourceImplementation(this._faker){
    final List<Document> fakeDocuments = List<Document>.generate(
      5,
      (int index) => Document(
        title: _faker.lorem.words(3).join(':'),
        path: 'https://www.fao.org/4/i0197e/i0197e09.pdf',
      ),
    );
    documents = Documents(items: fakeDocuments, total: fakeDocuments.length);
  }

  final Faker _faker;
  late Documents documents;

  @override
  Future<Documents> getDocuments({required Map<String, dynamic> values}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return documents;
  }
}
