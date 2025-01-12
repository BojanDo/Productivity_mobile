import '../../../../core/utils/typedef.dart';
import '../../../Notifications/domain/entities/notifications.dart';
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

  ResultFuture<Task> getTask(int id);

  ResultFuture<TaskResponse> updateTask(
    int id, {
    required Map<String, dynamic> values,
  });

  ResultFuture<TaskResponse> deleteTask(int id);

  ResultFuture<Notifications> getComments(int id);

  ResultFuture<TaskResponse> addComment({
    required Map<String, dynamic> values,
  });

  ResultFuture<TaskResponse> updateComment(
    int id, {
    required Map<String, dynamic> values,
  });

  ResultFuture<TaskResponse> deleteComment(int id);
}
