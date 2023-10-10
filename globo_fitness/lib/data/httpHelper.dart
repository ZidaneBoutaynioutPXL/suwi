import 'package:globo_fitness/data/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper {
  //https://api.openweathermap.org/data/2.5/weather?q=Genk&appid=28d3797ca1b08851b7c0d2c27ff268bf

  final String authority = 'api.openweathermap.org';
  final String path = "data/2.5/weather";
  final String apiKey = '28d3797ca1b08851b7c0d2c27ff268bf';

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parameters = {'q': location, 'appId': apiKey};
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weather = Weather.fromJson(data);





    return weather;
  }
}
