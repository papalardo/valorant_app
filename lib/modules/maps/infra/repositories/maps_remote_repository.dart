import 'package:valorant_app/library/repositories/repository_response.dart';
import 'package:valorant_app/modules/maps/infra/map_repository_interface.dart';
import 'package:valorant_app/modules/maps/infra/models/map_model.dart';

class MapsRemoteRepository implements MapRepositoryInterface {
  @override
  Future<RepositoryResponse<MapModel>> all() {
    // TODO: implement all
    throw UnimplementedError();
  }

}