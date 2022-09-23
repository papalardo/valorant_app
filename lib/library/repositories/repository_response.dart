import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';

part 'repository_response.freezed.dart';

@freezed
class RepositoryResponse<T> with _$RepositoryResponse<T> {
  const factory RepositoryResponse.success({
    required T data,
  }) = DataSourceSuccessResponse<T>;

  const factory RepositoryResponse.failure({
    required Failure error,
  }) = DataSourceFailureResponse<T>;
}
