import 'package:faker/faker.dart';

import '../core/errors/exceptions.dart';
import '../core/utils/api_manager.dart';
import '../features/Documents/data/datasources/documents_remote_data_source.dart';
import '../features/Documents/domain/entities/documents.dart';

class MockDocumentsRemoteDataSourceImplementation
    implements DocumentsRemoteDataSource {
  MockDocumentsRemoteDataSourceImplementation(this._faker, this._apiManager) {
    final List<Document> fakeDocuments = List<Document>.generate(
      20,
      (int index) => Document(
        id: index,
        title: _faker.company.name(),
        path: _faker.randomGenerator.element(<String>[
          'https://dijaski.net/get/geo_ref_sneg_01__predstavitev.pptx',
          'https://dijaski.net/get/slo_ese_hemingway_ernest_sneg_na_kilimandzaru_01.docx',
          'https://dijaski.net/get/zgo_sno_prva_svetovna_vojna_01__vzroki_potek.docx',
          'https://dijaski.net/get/zgo_sno_prva_svetovna_vojna_10.docx',
        ]),
      ),
    );
    documents =
        Documents(items: fakeDocuments, total: fakeDocuments.length * 3);
  }

  final APIManager _apiManager;
  final Faker _faker;
  late Documents documents;

  @override
  Future<Documents> getDocuments({required Map<String, dynamic> values}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return documents;
  }

  @override
  Future<void> downloadFile(
      {required String url, required String filePath}) async {
    try {
      await _apiManager.downloadFile(url, filePath);
    } on APIException {
      rethrow;
    }
  }
}
