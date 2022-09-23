import 'package:freezed_annotation/freezed_annotation.dart';

part 'weapon_shop.freezed.dart';

part 'weapon_shop.g.dart';

@freezed
class WeaponShop with _$WeaponShop {
  const factory WeaponShop({
    required final int cost,
    required final String category,
    required final String categoryText,
  }) = _WeaponShop;

  factory WeaponShop.fromJson(Map<String, Object?> json) =>
      _$WeaponShopFromJson(json);
}
