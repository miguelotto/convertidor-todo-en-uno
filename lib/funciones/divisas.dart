String compro(String v1, String v2, double n1) {
  // ignore: prefer_typing_uninitialized_variables
  var valor;
  switch (v1) {
    case "":
      valor = "Seleccione la moneda";
      break;
    case "Euros":
      switch (v2) {
        case "":
          valor = "Seleccione la moneda";
          break;
        case "Dolar":
          valor = n1 * 1.0776;
          break;

        case "Peso Colombiano":
          valor = n1 * 4212.99;
          break;

        case "Yen":
          valor = n1 * 161.89;

          break;

        case "Bolivar Soberano":
          valor = n1 * 39.05;
          break;

        case "Euros":
          valor = "no se puede convertir la misma moneda";
          break;
      }
      break;
    case "Dolar":
      switch (v2) {
        case "":
          valor = "Seleccione la moneda";
          break;
        case "Euros":
          valor = n1 * 0.93;
          break;

        case "Yen":
          valor = n1 * 150.22;
          break;

        case "Peso Colombiano":
          valor = n1 * 3909.53;
          break;

        case "Bolivar Soberano":
          valor = n1 * 36.23;
          break;

        case "Dolar":
          valor = "no se puede convertir la misma moneda";
          break;
      }
      break;

    case "Yen":
      switch (v2) {
        case "Dolar":
          valor = "0.0067";
          break;
        case "Euros":
          valor = 0.0062;
          break;

        case "Bolivar Soberano":
          valor = n1 * 0.24;
          break;

        case "Peso Colombiano":
          valor = n1 * 26.02;
          break;

        case "Yen":
          valor = "no se puede convertir la misma moneda";
          break;

        case "":
          valor = "Seleccione la moneda";
          break;
      }
      break;

    case "Bolivar Soberano":
      switch (v2) {
        case "Dolar":
          valor = n1 * 0.028;
          break;
        case "Euros":
          valor = n1 * 0.026;
          break;

        case "Peso Colombiano":
          valor = n1 * 109.17;
          break;

        case "Yen":
          valor = n1 * 4.09;
          break;

        case "Bolivar Soberano":
          valor = "no se puede convertir la misma moneda";
          break;

        case "":
          valor = "Seleccione la moneda";
          break;
      }
      break;
    case "Peso Colombiano":
      switch (v2) {
        case "Dolar":
          valor = 0.00026;
          break;
        case "Euros":
          valor = 0.00024;
          break;

        case "Yen":
          valor = 0.038;
          break;

        case "Bolivar Soberano":
          valor = 0.0093;
          break;

        case "Peso Colombiano":
          valor = "no se puede convertir la misma moneda";
          break;

        case "":
          valor = "Seleccione la moneda";
          break;
      }
      break;
  }
  return valor.toString();
}
