
import 'package:faker/faker.dart';
import 'package:productivity_mobile/features/Tasks/data/datasources/task_remote_data_source.dart';
import 'package:productivity_mobile/features/Tasks/domain/entities/task_response.dart';
import 'package:productivity_mobile/features/Tasks/domain/entities/tasks.dart';
import 'package:productivity_mobile/mock/task_remote_data_source.dart';

void main() async{
  final Faker faker = Faker();
  final TaskRemoteDataSource remote = MockTaskRemoteDataSourceImplementation(faker);
  Tasks tasks = await remote.getTasks(values: {});
  Task task = await remote.getTask('0');
  TaskResponse response = await remote.createTask(values: {});
  print('Done');
}