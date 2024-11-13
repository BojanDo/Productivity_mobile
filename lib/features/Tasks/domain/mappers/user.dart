import '../../../../core/entities/paginated_list.dart';
import '../../../User/domain/entities/users.dart';

Users paginatedListUserFromJson(Map<String, dynamic> json) =>
    Users.fromJson(json, (Object? item) => User.fromJson(item as Map<String, dynamic>));

Map<String, dynamic> paginatedListUserToJson(Users paginatedList) =>
    paginatedList.toJson((User user) => user.toJson());
