class Weather {
  String? cityName;
  double? temprature;
  double? wind;
  double? feels_like;
  int? pressure;
  int? humidity;

  Weather(
      {this.cityName,
      this.temprature,
      this.wind,
      this.feels_like,
      this.pressure,
      this.humidity});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temprature = json["main"]["temp"];
    wind = json["wind"]["speed"];
    feels_like = json["main"]["feels_like"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
  }
}
