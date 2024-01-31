// weather_icon_util.dart

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget getWeatherIcon(int code,DateTime currentDateTime) {
  bool isDaytime = currentDateTime.hour >= 6 && currentDateTime.hour < 18;
  switch (code) {
    case >= 200 && < 300:
      return Lottie.asset('assets/thunder.json');//Image.asset('assets/1.png');
    case >= 300 && < 400:
      return isDaytime
      ? Lottie.asset('assets/daychispeando.json')
        :Lottie.asset('assets/nightchispeando.json');//Image.asset('assets/2.png');
    case >= 500 && < 600:
      return Lottie.asset('assets/lluvia.json');//Image.asset('assets/3.png');
    case >= 600 && < 700:
      return isDaytime
      ? Lottie.asset('assets/snowday.json')
          :Lottie.asset('assets/snownight.json');
    case >= 700 && < 800:
      return Lottie.asset('assets/viento.json');
    case == 800:
      return isDaytime
      ? Lottie.asset('assets/sun.json')
          :Lottie.asset('assets/night.json');
    case > 800 && <= 804:
      return isDaytime
      ? Lottie.asset('assets/clouds.json')
          :Lottie.asset('assets/nightclouds.json');
    default:
      return Image.asset('assets/7.png');
  }
}
