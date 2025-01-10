import 'package:flutter_test/flutter_test.dart';
import 'package:productivity_mobile/features/User/domain/usecases/update_user.dart';

void main() {
  test('UpdateUserParams serialization', () {
    final params = const UpdateUserParams(
      firstname: 'John',
      lastname: 'Doe',
      jobTitle: 'Developer',
      profilePicture: '/path/to/file.jpg',
      deletePicture: false,
    );

    expect(params.toJson(), {
      'firstname': 'John',
      'lastname': 'Doe',
      'job_title': 'Developer',
      'profile_picture': '/path/to/file.jpg',
      'delete_picture': false,
    });

    print(params.toJson());

  });
}