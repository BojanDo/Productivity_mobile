import 'package:faker/faker.dart';

import '../features/Projects/data/datasources/project_remote_data_source.dart';
import '../features/Projects/domain/entities/project_response.dart';
import '../features/Projects/domain/entities/projects.dart';

class MockProjectRemoteDataSourceImplementation
    implements ProjectRemoteDataSource {
  const MockProjectRemoteDataSourceImplementation(this._faker);

  final Faker _faker;

  @override
  Future<Projects> getProjects() async {
    // TODO: implement getProjects
    throw UnimplementedError();
  }

  @override
  Future<ProjectResponse> createProject(
      {required Map<String, dynamic> values}) async {
    // TODO: implement createProject
    throw UnimplementedError();
  }

  @override
  Future<ProjectResponse> updateProject(String id,
      {required Map<String, dynamic> values}) async {
    // TODO: implement updateProject
    throw UnimplementedError();
  }

  @override
  Future<ProjectResponse> deleteProject(String id) async {
    // TODO: implement deleteProject
    throw UnimplementedError();
  }
}
