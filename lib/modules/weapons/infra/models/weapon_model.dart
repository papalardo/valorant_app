import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_shop.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_skin_model.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_status.dart';

part 'weapon_model.freezed.dart';

part 'weapon_model.g.dart';

@freezed
class WeaponModel with _$WeaponModel {
  const WeaponModel._();

  const factory WeaponModel({
    required final String uuid,
    required final String displayName,
    required final String displayIcon,
    required final String category,
    required final List<WeaponSkinModel> skins,
    required final WeaponShop? shopData,
    required final WeaponStatus? weaponStats,
  }) = _WeaponModel;

  factory WeaponModel.fromJson(Map<String, Object?> json) =>
      _$WeaponModelFromJson(json);

  String getCategoryName() {
    return shopData != null
        ? shopData!.categoryText
        : category.replaceAll('EEquippableCategory::', '');
  }
}
