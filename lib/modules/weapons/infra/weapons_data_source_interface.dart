import 'package:valorant_app/library/datasources/datasource_response.dart';
import 'package:valorant_app/modules/weapons/infra/models/weapon_model.dart';

abstract class WeaponsDataSourceInterface {
  Future<DatasourceResponse<List<WeaponModel>>> all();
}