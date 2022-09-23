import 'package:valorant_app/library/datasources/datasource_response.dart';
import 'package:valorant_app/modules/agents/infra/agents_datasource_interface.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';
import 'package:valorant_app/services/http/http_inferface.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';
import 'package:valorant_app/utils/network_exceptions/network_exceptions.dart';

class AgentsDatasource implements AgentsDatasourceInterface {
  HttpInterface http;

  AgentsDatasource({
    required this.http,
  });

  @override
  Future<DatasourceResponse<List<AgentModel>>> all() async {
    try {
      var response = await http.get('agents', queryParameters: {
        'language': 'pt-BR',
        'isPlayableCharacter': true,
      });

      var data = (response.json()!['data'] as List)
          .map((e) => AgentModel.fromJson(e))
          .toList()
        ..sort((a, b) => a.displayName.compareTo(b.displayName));

      return DatasourceResponse.success(data: data);
    } catch (error) {
      return DatasourceResponse.failure(
        error: Failure(NetworkExceptions.getErrorMessageFromException(error)),
      );
    }
  }

  @override
  Future<DatasourceResponse<AgentModel>> findById(String agentId) async {
    try {
      var response = await http.get('agents/$agentId', queryParameters: {
        'language': 'pt-BR',
      });

      var data = AgentModel.fromJson(response.json()!['data']);

      return DatasourceResponse.success(data: data);
    } catch (error) {
      return DatasourceResponse.failure(
        error: Failure(NetworkExceptions.getErrorMessageFromException(error)),
      );
    }
  }
}
