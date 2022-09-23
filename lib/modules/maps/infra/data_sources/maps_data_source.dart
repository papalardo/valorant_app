import 'package:valorant_app/library/datasources/datasource_response.dart';
import 'package:valorant_app/modules/maps/infra/maps_data_source_interface.dart';
import 'package:valorant_app/modules/maps/infra/models/map_model.dart';
import 'package:valorant_app/services/http/http_inferface.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';
import 'package:valorant_app/utils/network_exceptions/network_exceptions.dart';

class MapsDataSource implements MapsDataSourceInterface {
  HttpInterface http;

  MapsDataSource({required this.http});

  @override
  Future<DatasourceResponse<List<MapModel>>> all() async {
    try {
      var response = await http.get('/maps');
      var list = (response.json()!['data'] as List)
          .map((e) => MapModel.fromJson(e))
          .toList();
      return DatasourceResponse.success(data: list);
    } catch (error) {
      return DatasourceResponse.failure(
        error: Failure(NetworkExceptions.getErrorMessageFromException(error)),
      );
    }
  }
}
