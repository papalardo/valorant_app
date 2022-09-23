import 'package:valorant_app/library/repositories/repository_response.dart';
import 'package:valorant_app/modules/agents/infra/agents_datasource_interface.dart';
import 'package:valorant_app/modules/agents/infra/agents_repository_interface.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';

class AgentsRepository implements AgentsRepositoryInterface {
  AgentsDatasourceInterface datasource;

  AgentsRepository(this.datasource);

  @override
  Future<RepositoryResponse<List<AgentModel>>> all() async {
    var response = await datasource.all();

    return response.when(
      success: (data) => RepositoryResponse.success(data: data),
      failure: (error) => RepositoryResponse.failure(error: error),
    );
  }

  @override
  Future<RepositoryResponse<AgentModel>> findById(String agentId) async {
    var response = await datasource.findById(agentId);

    return response.when(
      success: (data) => RepositoryResponse.success(data: data),
      failure: (error) => RepositoryResponse.failure(error: error),
    );
  }

}
