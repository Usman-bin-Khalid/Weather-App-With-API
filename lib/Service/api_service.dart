import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const String apiKey = 'd295f978e92146e18a9191555250210';

class WeatherApiService {
  final String _baseURL = 'https://api.weatherapi.com/v1';
  Future<Map<String, dynamic>> getHourlyForecast(String location) async {
    final url = Uri.parse(
      "$_baseURL/forecast.json?key=$apiKey&q=$location&days=7",
    );
    final res = await http.get(url);
    if (res.statusCode != 200) {
      throw Exception("Failed to Fetch data : ${res.body}");
    }
    final data = json.decode(res.body);
    // Check if API returned an error
    if (data.containsKey('error')) {
      throw Exception(data['error']['message'] ?? 'Invalid Location');
    }
    return data;
  }

  // For Previous 7 Days Forecast
  Future<List<Map<String, dynamic>>> getPastSevenDaysWeather(
    String location,
  ) async {
    final List<Map<String, dynamic>> pastWeather = [];
    final today = DateTime.now();
    for (int i = 1; i <= 7; i++) {
      final data = today.subtract(Duration(days: i));
      final formatedDate =
          "${data.year}-${data.month.toString().padLeft(2, "0")}-${data.day.toString().padLeft(2, "0")}";
      final url = Uri.parse(
        "$_baseURL/history.json?key=$apiKey&q=$location&dt=$formatedDate",
      );
      final res = await http.get(url);
      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);

        // Check if API returned an error
        if (data.containsKey('error')) {
          throw Exception(data['error']['message'] ?? 'Invalid Location');
        }
        if (data['forecast']?['forecastday'] != null) {
          pastWeather.add(data);
        } else {
          debugPrint('Failed to fetch data for $formatedDate : ${res.body}');
        }
      }
    }

    return pastWeather;
  }
}
