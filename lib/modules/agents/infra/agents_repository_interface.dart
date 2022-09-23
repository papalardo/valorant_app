import 'package:valorant_app/library/repositories/repository_response.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';

abstract class AgentsRepositoryInterface {
  Future<RepositoryResponse<List<AgentModel>>> all();
  Future<RepositoryResponse<AgentModel>> findById(String agentId);
}