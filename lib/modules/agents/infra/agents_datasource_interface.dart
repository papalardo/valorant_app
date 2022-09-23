import 'package:valorant_app/library/datasources/datasource_response.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';

abstract class AgentsDatasourceInterface {
  Future<DatasourceResponse<List<AgentModel>>> all();
  Future<DatasourceResponse<AgentModel>> findById(String agentId);
}