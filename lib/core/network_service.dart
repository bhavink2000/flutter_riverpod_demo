import 'dart:convert';

import 'package:flutter_riverpod_demo/core/endpoints.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  Future<dynamic> fetchUserData() async {
    final response = await http.get(Uri.parse(ApiEndPoints.user));
    if(response.statusCode == 200){
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load user data');
    }
  }
}