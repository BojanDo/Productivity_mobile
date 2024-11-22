import '../utils/typedef.dart';

abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();

  ResultFuture<Type> call(Params params);
}

abstract class UsecaseIdWithParams<Type, Params> {
  const UsecaseIdWithParams();

  ResultFuture<Type> call(int id,Params params);
}

abstract class UsecaseWithoutParams<Type> {
  const UsecaseWithoutParams();

  ResultFuture<Type> call();
}

abstract class UsecaseIdWithoutParams<Type> {
  const UsecaseIdWithoutParams();

  ResultFuture<Type> call(int id);
}
