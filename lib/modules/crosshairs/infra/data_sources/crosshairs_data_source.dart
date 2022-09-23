import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:valorant_app/library/datasources/datasource_response.dart';
import 'package:valorant_app/modules/crosshairs/infra/models/crosshair_code.dart';
import 'package:valorant_app/services/http/http_inferface.dart';
import 'package:valorant_app/utils/extensions/list.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';
import 'package:valorant_app/utils/network_exceptions/network_exceptions.dart';

final List<String> _sortKeys = ['team'];

class CrosshairsDataSource {
  HttpInterface http;

  CrosshairsDataSource({required this.http});

  Future<DatasourceResponse<List<CrosshairCode>>> playerCrosshairs() async {
    try {
      var response = await http.get('https://www.vcrdb.net/apiv3/get/1');
      var list = (response.json() as List)
          .map((item) => CrosshairCode.fromJson(item))
          .toList()
          .sortByRef(_sortKeys, (v) => v.tags, (v) => v.name);

      return DatasourceResponse.success(data: list);
    } catch (error) {
      return DatasourceResponse.failure(
        error: Failure(NetworkExceptions.getErrorMessageFromException(error)),
      );
    }
  }
}
