import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:machine_test/model/apimodel.dart';

class ApiProvider {
   Future<ApiModel?> getMyDebts() async {
    final resp = await http.get(Uri.parse(
        "https://finekube.com/interview/flutterTest.php?pageNo=1"));

    if (resp.statusCode == 200) {
      final decoded = jsonDecode(resp.body);

      return ApiModel.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}