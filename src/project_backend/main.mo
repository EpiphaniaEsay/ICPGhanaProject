actor UnitConverter {

  public func convertLength(value: Float, fromUnit: Text, toUnit: Text):async Float {
    if (fromUnit == "meters" and toUnit == "kilometers") {
      return value / 1000.0;
    } else if (fromUnit == "feet" and toUnit == "inches") {
      return value * 12.0;
    } else {
      return 0.0;
    }
  };

  public func convertWeight(value: Float, fromUnit: Text, toUnit: Text): async Float {
    if (fromUnit == "kilograms" and toUnit == "pounds") {
      return value * 2.20462;
    } else if (fromUnit == "grams" and toUnit == "ounces") {
      return value / 28.3495;
    } else {
      return 0.0;
    }
  };

  public func convertTemperature(value: Float, fromUnit: Text, toUnit: Text):async Float {
    if (fromUnit == "Celsius" and toUnit == "Fahrenheit") {
      return (value * 9.0 / 5.0) + 32.0;
    } else if (fromUnit == "Kelvin" and toUnit == "Celsius") {
      return value - 273.15;
    } else {
      return 0.0;
    }
  };

  public func convertVolume(value: Float, fromUnit: Text, toUnit: Text): asyncFloat {
    if (fromUnit == "liters" and toUnit == "milliliters") {
      return value * 1000.0;
    } else if (fromUnit == "gallons" and toUnit == "liters") {
      return value * 3.78541;
    } else {
      return 0.0;
    }
  };
};