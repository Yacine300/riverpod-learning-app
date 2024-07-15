import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/model/to_do.dart';
import 'package:http/http.dart' as http;

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
  Future<ToDO> getToDo(int id) async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

      if (response.statusCode == 200) {
        print(response.body);
        return ToDO.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load ToDO');
      }
    } catch (e) {
      throw Exception('Error getting todos');
    }
  }
}
