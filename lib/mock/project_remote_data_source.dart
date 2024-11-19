import 'package:faker/faker.dart';

import '../features/Projects/data/datasources/project_remote_data_source.dart';
import '../features/Projects/domain/entities/project_response.dart';
import '../features/Projects/domain/entities/projects.dart';

class MockProjectRemoteDataSourceImplementation
    implements ProjectRemoteDataSource {
  const MockProjectRemoteDataSourceImplementation(this._faker){
    final List<Project> fakeProjects = List<Project>.generate(
      5,
      (int index) => Project(
        id: index,
        title: _faker.lorem.words(2).join(' '),
        description: faker.lorem.sentences(6).join(' '),
      ),
    );
    projects = Projects(items: fakeProjects, total: fakeProjects.length);
    response = ProjectResponse(message: _faker.lorem.words(3).join(' '));
  }

  final Faker _faker;
  late Projects projects;
  late ProjectResponse response;

  @override
  Future<Projects> getProjects() async {
    await Future.delayed(const Duration(seconds: 1));
    return projects;
  }

  @override
  Future<ProjectResponse> createProject(
      {required Map<String, dynamic> values}) async {
    await Future.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<ProjectResponse> updateProject(String id,
      {required Map<String, dynamic> values}) async {
    await Future.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<ProjectResponse> deleteProject(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return response;
  }
}
