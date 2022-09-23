import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';

part 'datasource_response.freezed.dart';

@freezed
class DatasourceResponse<T> with _$DatasourceResponse<T> {
  const factory DatasourceResponse.success({
    required T data,
  }) = DataSourceSuccessResponse<T>;

  const factory DatasourceResponse.failure({
    required Failure error,
  }) = DataSourceFailureResponse<T>;
}
