import 'package:flutter/material.dart';
import 'package:valorant_app/library/datasources/datasource_response.dart';
import 'package:valorant_app/modules/lineups/infra/models/lineup_model.dart';
import 'package:valorant_app/services/http/http_inferface.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';
import 'package:valorant_app/utils/network_exceptions/network_exceptions.dart';

class GetLineupsRequestParams {
  String map;
  String agent;
  String ability;
  String side;

  GetLineupsRequestParams({
    this.map = 'all',
    this.agent = 'all',
    this.ability = 'all',
    this.side = 'all',
  });
}

class LineupsDataSource {
  HttpInterface http;

  LineupsDataSource({
    required this.http,
  });

  Future<DatasourceResponse<List<LineupModel>>> getList(
    GetLineupsRequestParams params,
  ) async {
    try {
      var response = await http.get(
        'https://api.tracker.gg/api/v1/valorant/guides',
        queryParameters: {
          'map': params.map,
          'agent': params.agent,
          'ability': params.ability,
          'side': params.side,
        },
      );
      var list = (response.json()['data']['guides'] as List).map((item) => LineupModel.fromJson(item)).toList();

      return DatasourceResponse.success(data: list);
    } catch (error, stack) {
      debugPrintStack(stackTrace: stack, label: "$error");
      return DatasourceResponse.failure(
        error: Failure(NetworkExceptions.getErrorMessageFromException(error)),
      );
    }
  }
}
