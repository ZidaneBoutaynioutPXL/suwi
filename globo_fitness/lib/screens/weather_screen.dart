import 'package:flutter/material.dart';
import 'package:globo_fitness/data/weather.dart';
import '../data/httpHelper.dart';

class WeatherScreenState extends StatefulWidget {
  const WeatherScreenState({super.key});

  @override
  State<WeatherScreenState> createState() => __WeatherScreenStateState();
}

class __WeatherScreenStateState extends State<WeatherScreenState> {
  final TextEditingController txtplace = TextEditingController();
  Weather result = Weather('', '', 0, 0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Weather')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  controller: txtplace,
                  decoration: InputDecoration(
                      hintText: 'Enter a city',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: getData,
                      ))
                )
              ),
              weatherRow('Place: ', result.name),
              weatherRow('Description: ', result.description),
              weatherRow('Temperature: ', result.tempreture.toStringAsFixed(2)),
              weatherRow('Preceived: ', result.preceived.toStringAsFixed(2)),
              weatherRow('Pressure: ', result.pressure.toString()),
              weatherRow('Humidity: ', result.humidity.toString()),
              
            ],
          ),
        ));
  }

  Future getData() async {
    HttpHelper helper = HttpHelper();
    result = await helper.getWeather(txtplace.text);
    setState(() {});
  }

  Widget weatherRow(String label, String value) {
    Widget row = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).hintColor,
                ),
              )),
          Expanded(
              flex: 4,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ))
        ],
      ),
    );
    return row;
  }
}