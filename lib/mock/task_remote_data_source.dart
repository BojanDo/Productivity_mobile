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
        status: _faker.randomGenerator.element(
            <String>['ToDo', 'In Progress', 'Review', 'Test', 'Closed']),
        label: _faker.randomGenerator.element(<String>['BUG', 'FEATURE']),
        date: DateFormat('dd.MM.yyyy')
            .format(faker.date.dateTime(minYear: 2000, maxYear: 2024)),
        taskNumber: '$index',
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
        organizationId: '1',
        roleName: faker.randomGenerator.element(<String>['Owner', 'Developer']),
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
        type:
            faker.randomGenerator.element(<String>['comment', 'notification']),
      ),
    );
    final List<Document> fakeDocuments = List<Document>.generate(
      2,
      (int index) => Document(
        title: _faker.lorem.words(3).join(' '),
        path:
            'https://cdn.discordapp.com/attachments/1306639426511704126/1307107451715194950/Productivity_Anonimizirano.pdf?ex=6739c2ed&is=6738716d&hm=9650790717caca53adf35b6c8300d914dd32b42a246b9de95a86b943ee254fe5&',
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
      description: <String, dynamic>{'description': faker.lorem.sentences(6).join(' ')},
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
  Future<Tasks> getTasks({required Map<String, dynamic> values}) async{
    await Future.delayed(const Duration(seconds: 1));
    return tasks;
  }

  @override
  Future<TaskResponse> createTask({required Map<String, dynamic> values}) async{
    await Future.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<Task> getTask(String id) async{
    await Future.delayed(const Duration(seconds: 1));
    return task;
  }

  @override
  Future<TaskResponse> updateTask(String id,
      {required Map<String, dynamic> values}) async{
    await Future.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<TaskResponse> deleteTask(String id) async{
    await Future.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<TaskResponse> addComment({required Map<String, dynamic> values}) async{
    await Future.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<TaskResponse> updateComment(String id,
      {required Map<String, dynamic> values}) async{
    await Future.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<TaskResponse> deleteComment(String id) async{
    await Future.delayed(const Duration(seconds: 1));
    return response;
  }
}
