class Fahrenheit {
 // Fahrenheit a Celsius
  double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5/9;
  }

  // Fahrenheit a Kelvin
  double fahrenheitToKelvin(double fahrenheit) {
    return (fahrenheit -32)*5/9+273.15;
  }

}