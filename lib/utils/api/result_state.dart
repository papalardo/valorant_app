import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';

part 'result_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.data({
    required T data,
  }) = Data<T>;

  const factory ResultState.error({
    required Failure error,
  }) = Error<T>;
}
