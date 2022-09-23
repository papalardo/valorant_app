import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_status_damage.dart';

part 'weapon_status.freezed.dart';

part 'weapon_status.g.dart';

@freezed
class WeaponStatus with _$WeaponStatus {
  const factory WeaponStatus({
    required final double fireRate,
    required final double reloadTimeSeconds,
    required final double magazineSize,
    required final double equipTimeSeconds,
    required final List<WeaponStatusDamage> damageRanges,
  }) = _WeaponStatusModel;

  factory WeaponStatus.fromJson(Map<String, Object?> json) =>
      _$WeaponStatusFromJson(json);
}
