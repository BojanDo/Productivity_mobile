import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/profile_picture.freezed.dart';

@freezed
class ProfilePicture with _$ProfilePicture {
  const factory ProfilePicture({
   required String initial,
   String? current,
}) = _ProfilePicture;

}
