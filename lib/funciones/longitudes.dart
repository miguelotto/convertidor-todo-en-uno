String compro(String v1, String v2, double n1) {
  // ignore: prefer_typing_uninitialized_variables
  var valor;
  switch (v1) {
    case "":
      valor = "Seleccione una longitud";
      break;
    case "Kilometro":
      switch (v2) {
        case "":
          valor = "Seleccione una longitud";
          break;
        case "Metro":
          valor = n1 * 1000;
          break;
        case "Centimetro":
          valor = n1 * 100000;
          break;
        case "Pulgada":
          valor = n1 * 39370.1;
          break;
        case "Milla":
          valor = n1 / 1.609;
          break;
        case "Kilometro":
          valor = "no se puede convertir la misma longitud";
          break;
      }

      break;
    case "Metro":
      switch (v2) {
        case "":
          valor = "Seleccione una longitud";
          break;
        case "Kilometro":
          valor = n1 / 1000;
          break;
        case "Centimetro":
          valor = n1 * 100;
          break;
        case "Milla":
          valor = n1 / 1069;
          break;
        case "Pulgada":
          valor = n1 * 39.37;
          break;
        case "Metro":
          valor = "no se puede convertir la misma longitud";
          break;
      }
      break;
    case "Centimetro":
      switch (v2) {
        case "":
          valor = "Seleccione una longitud";
          break;
        case "Metro":
          valor = n1 / 100;

          break;
        case "Kilometro":
          valor = n1 / 100000;
          break;
        case "Milla":
          valor = n1 * 160900;
          break;
        case "Pulgada":
          valor = n1 / 2.54;
          break;
        case "Centimetro":
          valor = "no se puede convertir la misma longitud";
          break;
      }
      break;
    case "Pulgada":
      switch (v2) {
        case "":
          valor = "Seleccione una longitud";
          break;
        case "Kilometro":
          valor = n1 / 39370;
          break;
        case "Metro":
          valor = n1 / 39.37;
          break;
        case "Centimetro":
          valor = n1 * 2.54;
          break;
        case "Milla":
          valor = n1 / 63360;
          break;
        case "Pulgada":
          valor = "no se puede convertir la misma longitud";
          break;
      }
      break;
    case "Milla":
      switch (v2) {
        case "":
          valor = "Seleccione una longitud";
          break;
        case "Kilometro":
          valor = n1 * 1.609;
          break;
        case "Metro":
          valor = n1 * 1609;
          break;
        case "Centimetro":
          valor = n1 * 160900;
          break;
        case "Pulgada":
          valor = n1 * 63360;
          break;
        case "Milla":
          valor = "no se puede convertir la misma longitud";
          break;
      }
      break;
  }
  return valor.toString();
}
