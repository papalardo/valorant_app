import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/crosshairs/infra/models/crosshair.dart';

part 'crosshair_code.freezed.dart';

part 'crosshair_code.g.dart';

@freezed
class CrosshairCode with _$CrosshairCode {
  const CrosshairCode._();

  const factory CrosshairCode({
    @Default('')
    final String name,
    required final String code,
    @Default('')
    final String tags,
  }) = _CrosshairCode;

  factory CrosshairCode.fromJson(Map<String, Object?> json) =>
      _$CrosshairCodeFromJson(json);

  Crosshair toCrosshair() => Crosshair.fromCode(code);
}
