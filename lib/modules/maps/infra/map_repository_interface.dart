import 'package:valorant_app/library/repositories/repository_response.dart';
import 'package:valorant_app/modules/maps/infra/models/map_model.dart';

abstract class MapRepositoryInterface {
  Future<RepositoryResponse<MapModel>> all();
}