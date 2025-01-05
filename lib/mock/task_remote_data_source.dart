import 'package:faker/faker.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../features/Documents/domain/entities/documents.dart';
import '../features/Projects/domain/entities/projects.dart';
import '../features/Tasks/data/datasources/task_remote_data_source.dart';
import '../features/Tasks/domain/entities/comments.dart';
import '../features/Tasks/domain/entities/task_response.dart';
import '../features/Tasks/domain/entities/tasks.dart';
import '../features/User/domain/entities/users.dart';

class MockTaskRemoteDataSourceImplementation implements TaskRemoteDataSource {
  MockTaskRemoteDataSourceImplementation(this._faker) {
    final List<TaskSlim> fakeTasks = List<TaskSlim>.generate(
      20,
      (int index) => TaskSlim(
        id: index,
        title: _faker.lorem.words(3).join(' '),
        status: faker.randomGenerator.element(Status.values),
        label: faker.randomGenerator.element(Label.values),
        date: DateFormat('dd.MM.yyyy')
            .format(faker.date.dateTime(minYear: 2000, maxYear: 2024)),
        taskNumber: '#$index',
      ),
    );
    tasks = Tasks(items: fakeTasks, total: fakeTasks.length);

    final List<User> fakeUsers = List<User>.generate(
      2,
      (int index) => User(
        id: index,
        firstname: _faker.person.firstName(),
        lastname: _faker.person.lastName(),
        email: _faker.internet.email(),
        jobTitle:
            _faker.randomGenerator.element(<String>['Owner', 'Developer']),
        organizationId: 1,
        roleName: faker.randomGenerator.element(Role.values),
      ),
    );
    final List<Comment> fakeComments = List<Comment>.generate(
      5,
      (int index) => Comment(
        id: index,
        date: DateFormat('dd.MM.yyyy')
            .format(faker.date.dateTime(minYear: 2000, maxYear: 2024)),
        description: faker.lorem.sentences(2).join(' '),
        user: fakeUsers.first,
        type: faker.randomGenerator.element(CommentType.values),
      ),
    );
    final List<Document> fakeDocuments = List<Document>.generate(
      2,
      (int index) => Document(
        title: _faker.lorem.words(3).join(' '),
        path:
            'https://www.fao.org/4/i0197e/i0197e09.pdf',
      ),
    );
    final Project fakeProject = Project(
      id: 0,
      title: _faker.lorem.words(3).join(' '),
      description: faker.lorem.sentences(6).join(' '),
    );
    task = Task(
      id: fakeTasks.first.id,
      taskNumber: fakeTasks.first.taskNumber,
      title: fakeTasks.first.title,
      description: <Map<String, dynamic>>[
        <String, dynamic>{'insert': 'This is a heading'},
        <String, dynamic>{
          'insert': '\n',
          'attributes': <String, int>{'header': 1},
        },
        <String, dynamic>{
          'insert':
          'This is a normal content description\nWith multiple lines\nAnd a',
        },
        <String, dynamic>{
          'insert': '\n',
          'attributes': <String, String>{'list': 'bullet'},
        },
        <String, dynamic>{'insert': 'list'},
        <String, dynamic>{
          'insert': '\n',
          'attributes': <String, String>{'list': 'bullet'},
        }
      ],
      status: fakeTasks.first.status,
      label: fakeTasks.first.label,
      date: fakeTasks.first.date,
      project: fakeProject,
      users: Users(items: fakeUsers, total: fakeUsers.length),
      comments: Comments(items: fakeComments, total: fakeDocuments.length),
      documents: Documents(items: fakeDocuments, total: fakeDocuments.length),
    );
    response = TaskResponse(message: _faker.lorem.words(3).join(' '));
  }

  final Faker _faker;
  late Tasks tasks;
  late Task task;
  late TaskResponse response;

  @override
  Future<Tasks> getTasks({required Map<String, dynamic> values}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return tasks;
  }

  @override
  Future<TaskResponse> createTask(
      {required Map<String, dynamic> values,}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<Task> getTask(int id) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return task;
  }

  @override
  Future<TaskResponse> updateTask(int id,
      {required Map<String, dynamic> values,}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<TaskResponse> deleteTask(int id) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<TaskResponse> addComment(
      {required Map<String, dynamic> values,}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<TaskResponse> updateComment(int id,
      {required Map<String, dynamic> values,}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<TaskResponse> deleteComment(int id) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }
}
