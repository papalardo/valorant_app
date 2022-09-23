import 'package:collection/collection.dart';
import 'package:valorant_app/library/datasources/datasource_response.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_model.dart';
import 'package:valorant_app/modules/weapons/infra/weapons_data_source_interface.dart';
import 'package:valorant_app/services/http/http_inferface.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';
import 'package:valorant_app/utils/network_exceptions/network_exceptions.dart';
import 'package:valorant_app/utils/extensions/list.dart';

const List<String> _sortKeys = [
  'EEquippableCategory::Melee',
  'EEquippableCategory::Sidearm',
  'EEquippableCategory::SMG',
  'EEquippableCategory::Rifle',
  'EEquippableCategory::Shotgun',
  'EquippableCategory::Heavy',
  'EEquippableCategory::Sniper',
];

class WeaponsDataSource implements WeaponsDataSourceInterface {
  HttpInterface http;

  WeaponsDataSource({required this.http});

  @override
  Future<DatasourceResponse<List<WeaponModel>>> all() async {
    try {
      var response = await http.get('/weapons', queryParameters: {
        'language': 'pt-BR',
      });
      var list = (response.json()!['data'] as List)
          .map((e) => WeaponModel.fromJson(e))
          .toList()
          .sortByRef(
            _sortKeys,
            (v) => v.category,
            (v) => "${v.shopData?.cost ?? 0}".padLeft(5, '0'),
          );
      return DatasourceResponse.success(data: list);
    } catch (error) {
      return DatasourceResponse.failure(
        error: Failure(NetworkExceptions.getErrorMessageFromException(error)),
      );
    }
  }
}
