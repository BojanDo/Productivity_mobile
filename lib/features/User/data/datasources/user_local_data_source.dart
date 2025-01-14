import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/sql_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/organizations.dart';
import '../../domain/entities/user_response.dart';

const List<String> userLocalDataSourceField = <String>[
  'id',
  'name',
  'description',
];

abstract class UserLocalDataSource {
  Future<UserResponse> createOrganization({
    required Map<String, dynamic> values,
  });

  Future<Organizations> getOrganizations();

  Future<UserResponse> updateOrganization(
    int id, {
    required Map<String, dynamic> values,
  });
}

class UserLocalDataSourceImplementation implements UserLocalDataSource {
  const UserLocalDataSourceImplementation(this._sqlManager);

  final SQLManager _sqlManager;

  @override
  Future<UserResponse> createOrganization({
    required Map<String, dynamic> values,
  }) async {
    try {
      final Map<String, dynamic> filteredValues =
          Map<String, dynamic>.fromEntries(
        values.entries.where(
          (MapEntry<String, dynamic> entry) =>
              userLocalDataSourceField.contains(entry.key),
        ),
      );

      await _sqlManager.storeData(kOrganizationsTable, filteredValues);
      return const UserResponse(message: 'Successfully created organization');
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<Organizations> getOrganizations() async {
    try {
      final List<Map<String, dynamic>> result =
          await _sqlManager.getData(kOrganizationsTable);
      final DataMap response = <String, dynamic>{
        'items': result,
        'total': result.length,
      };
      return Organizations.fromJson(
        response,
        (Object? item) => Organization.fromJson(item as DataMap),
      );
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<UserResponse> updateOrganization(
    int id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final Map<String, dynamic> filteredValues =
          Map<String, dynamic>.fromEntries(
        values.entries.where(
          (MapEntry<String, dynamic> entry) =>
              userLocalDataSourceField.contains(entry.key),
        ),
      );

      await _sqlManager.updateData(kOrganizationsTable, filteredValues, id);
      return const UserResponse(message: 'Successfully updated organization');
    } on APIException {
      rethrow;
    }
  }
}
