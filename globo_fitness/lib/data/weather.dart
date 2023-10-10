class Weather {
  String name = '';
  String description = '';
  double tempreture = 0;
  double preceived = 0;
  int pressure = 0;
  int humidity = 0;

  Weather(this.name, this.description, this.tempreture, this.preceived, this.pressure, this.humidity);

  Weather.fromJson(Map<String, dynamic> weatherMap) {
    this.name = weatherMap['name'];
    this.tempreture = (weatherMap['main']['temp'] - 272.15 ?? 0);
    this.preceived = (weatherMap['main']['feels_like'] - 272.15 ?? 0);
    this.pressure =  weatherMap['main']['pressure'] ?? 0;
    this.humidity =  weatherMap['main']['humidity'] ?? 0;
    this.description = weatherMap['weather'][0]['main'] ?? 0;
     
  }
}