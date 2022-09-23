import 'package:valorant_app/library/datasources/datasource_response.dart';
import 'package:valorant_app/modules/maps/infra/models/map_model.dart';

abstract class MapsDataSourceInterface {
  Future<DatasourceResponse<List<MapModel>>> all();
}