import 'package:freezed_annotation/freezed_annotation.dart';

part 'weapon_status_damage.freezed.dart';

part 'weapon_status_damage.g.dart';

@freezed
class WeaponStatusDamage with _$WeaponStatusDamage {
  const factory WeaponStatusDamage({
    required double rangeStartMeters,
    required double rangeEndMeters,
    required double headDamage,
    required double bodyDamage,
    required double legDamage,
  }) = _WeaponStatusDamage;

  factory WeaponStatusDamage.fromJson(Map<String, Object?> json) =>
      _$WeaponStatusDamageFromJson(json);
}
