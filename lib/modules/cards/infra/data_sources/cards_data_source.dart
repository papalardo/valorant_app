import 'package:valorant_app/library/datasources/datasource_response.dart';
import 'package:valorant_app/modules/cards/infra/models/card_model.dart';
import 'package:valorant_app/services/http/http_inferface.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';
import 'package:valorant_app/utils/network_exceptions/network_exceptions.dart';

class CardsDataSource {
  HttpInterface http;

  CardsDataSource({
    required this.http,
  });

  Future<DatasourceResponse<List<CardModel>>> all() async {
    try {
      var data = await http.get('/playercards');

      var list = (data.json()!['data'] as List)
          .map(
            (e) => CardModel.fromJson(e),
          )
          .toList();
      return DatasourceResponse.success(data: list);
    } catch (error) {
      return DatasourceResponse.failure(
        error: Failure(NetworkExceptions.getErrorMessageFromException(error)),
      );
    }
  }
}
