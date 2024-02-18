String compro(String v1, String v2, double n1) {
  // ignore: prefer_typing_uninitialized_variables
  var valor;
  switch (v1) {
    case "":
      valor = "Seleccione una temperatura";
      break;
    case "Celsius":
      switch (v2) {
        case "":
          valor = "Seleccione una temperatura";
          break;
        case "Fahrenheit":
          valor = (n1 * 9 / 5) + 32;
          break;
        case "Kelvin":
          valor = n1 + 273.15;
          break;
        case "Rankine":
          valor = n1 * 9 / 5 + 491.67;
          break;
        case "Reaumur":
          valor = n1 / 1.25;

          break;
        case "Celsius":
          valor = "no se puede convertir a la misma temperatura";
          break;
      }

      break;
    case "Fahrenheit":
      switch (v2) {
        case "":
          valor = "Seleccione una temperatura";
          break;
        case "Celsius":
          valor = (n1 - 32) * 5 / 9;

          break;
        case "Kelvin":
          valor = (n1 - 32) * 5 / 9 + 273.15;
          break;
        case "Rankine":
          valor = n1 + 459.67;
          break;
        case "Reaumur":
          valor = (n1 - 32) / 2.25;
          break;
        case "Fahrenheit":
          valor = "no se puede convertir a la misma temperatura";
          break;
      }

      break;
    case "Kelvin":
      switch (v2) {
        case "":
          valor = "Seleccione una temperatura";
          break;
        case "Celsius":
          valor = n1 - 273.15;
          break;
        case "Fahrenheit":
          valor = (n1 - 273.15) * 9 / 5 + 32;
          break;
        case "Rankine":
          valor = ((n1 - 273.15) * 1.8) + 491.67;
          break;
        case "Reaumur":
          valor = (n1 - 273.15) / 1.25;
          break;
        case "Kelvin":
          valor = "no se puede convertir a la misma temperatura";
          break;
      }

      break;
    case "Rankine":
      switch (v2) {
        case "":
          valor = "Seleccione una temperatura";
          break;
        case "Celsius":
          valor = (n1 - 491.67) * 5 / 9;
          break;
        case "Fahrenheit":
          valor = n1 - 459.67;
          break;
        case "Kelvin":
          valor = n1 * 5 / 9;
          break;
        case "Reaumur":
          valor = (n1 - 491.67) / 2.25;
          break;
        case "Rankine":
          valor = "no se puede convertir a la misma temperatura";
          break;
      }
      break;
    case "Reaumur":
      switch (v2) {
        case "":
          valor = "Seleccione una temperatura";
          break;
        case "Celsius":
          valor = n1 * 1.25;
          break;
        case "Fahrenheit":
          valor = (n1 * 2.25) + 32;
          break;
        case "Kelvin":
          valor = (n1 * 1.25) + 273.15;
          break;
        case "Rankine":
          valor = (n1 * 2.25) + 491.67;
          break;
        case "Reaumur":
          valor = "no se puede convertir a la misma temperatura";
          break;
      }
      break;
  }
  return valor.toString();
}
