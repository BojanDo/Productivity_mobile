import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/document_response.freezed.dart';
part 'generated/document_response.g.dart';

@freezed
class DocumentResponse with _$DocumentResponse {
  const factory DocumentResponse({
    @Default(true) bool status,
    required String message,
}) = _DocumentResponse;

  factory DocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentResponseFromJson(json);
}

