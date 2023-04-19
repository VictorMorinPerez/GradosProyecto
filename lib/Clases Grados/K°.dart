class Kelvin{

  // Kelvin a Celsius
  double kelvinToCelsius(double kelvin) {
    return kelvin - 273.15;
  }

  // Kelvin a Fahrenheit
  double kelvinToFahrenheit(double kelvin) {
    return (kelvin -273.15) * 9/5 + 32;
  }
}