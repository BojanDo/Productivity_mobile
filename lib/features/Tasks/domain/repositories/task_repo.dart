import '../../../../core/utils/typedef.dart';
import '../entities/task_response.dart';
import '../entities/tasks.dart';

abstract class TaskRepository {
  const TaskRepository();

  ResultFuture<Tasks> getTasks({
    required Map<String, dynamic> values,
  });

  ResultFuture<TaskResponse> createTask({
    required Map<String, dynamic> values,
  });

  ResultFuture<Task> getTask(String id);

  ResultFuture<TaskResponse> updateTask(
    String id, {
    required Map<String, dynamic> values,
  });

  ResultFuture<TaskResponse> deleteTask(String id);

  ResultFuture<TaskResponse> addComment({
    required Map<String, dynamic> values,
  });

  ResultFuture<TaskResponse> updateComment(
    String id, {
    required Map<String, dynamic> values,
  });

  ResultFuture<TaskResponse> deleteComment(String id);
}
