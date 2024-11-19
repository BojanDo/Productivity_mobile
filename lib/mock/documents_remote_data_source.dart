import 'package:faker/faker.dart';

import '../features/Documents/data/datasources/documents_remote_data_source.dart';
import '../features/Documents/domain/entities/document_response.dart';
import '../features/Documents/domain/entities/documents.dart';

class MockDocumentsRemoteDataSourceImplementation
    implements DocumentsRemoteDataSource {
  const MockDocumentsRemoteDataSourceImplementation(this._faker){
    final List<Document> fakeDocuments = List<Document>.generate(
      5,
      (int index) => Document(
        title: _faker.lorem.words(3).join(':'),
        path: 'https://cdn.discordapp.com/attachments/1306639426511704126/1307107451715194950/Productivity_Anonimizirano.pdf?ex=6739c2ed&is=6738716d&hm=9650790717caca53adf35b6c8300d914dd32b42a246b9de95a86b943ee254fe5&',
      ),
    );
    documents = Documents(items: fakeDocuments, total: fakeDocuments.length); 
    response = DocumentResponse(message: _faker.lorem.words(3).join(' '));
  }

  final Faker _faker;
  late Documents documents;
  late DocumentResponse response;

  @override
  Future<Documents> getDocuments({required Map<String, dynamic> values}) async {
    await Future.delayed(const Duration(seconds: 1));
    return documents;
  }
}
