//quizas no es la mejor manera pero me ahorre 74 lineas de
//codigo de esta manera
String compro(String v1, String v2, double n1) {
  // ignore: prefer_typing_uninitialized_variables
  var valor;
  switch (v1) {
    case "":
      valor = "Seleccione un peso";
      break;
    //Kilogramos calculos
    case "Kilogramos":
      switch (v2) {
        case "":
          valor = "Seleccione un peso";
          break;
        case "Kilogramos":
          valor = "Seleccion invalida";
          break;
        case "Libras":
          valor = n1 * 2.205;

          break;
        case "Gramos":
          valor = n1 * 1000;

          break;
        case "Quilates":
          valor = n1 * 5000;
          break;
        case "Onzas":
          valor = n1 * 35.274;
          break;
        case "Miligramos":
          valor = n1 * 1000000;
          break;
      }

      break;
    //Libras Calculos
    case "Libras":
      switch (v2) {
        case "":
          valor = "Seleccione el peso final";
          break;
        case "Kilogramos":
          valor = n1 / 2.205;
          break;
        case "Gramos":
          valor = n1 * 453.6;
          break;
        case "Miligramos":
          valor = n1 * 453592;
          break;
        case "Onzas":
          valor = n1 * 16;
          break;
        case "Quilates":
          valor = n1 * 2268;
          break;
        case "Libras":
          valor = "No puede convertir libras a libra";
          break;
      }
      break;
    //Onzas calculos
    case "Onzas":
      switch (v2) {
        case "":
          valor = "Seleccione un peso";
          break;
        case "Kilogramos":
          valor = n1 / 35.274;

          break;
        case "Libras":
          valor = n1 / 16;
          break;
        case "Gramos":
          valor = n1 * 28.35;
          break;
        case "Miligramos":
          valor = n1 * 28350;
          break;
        case "Quilates":
          valor = n1 * 141.7;
          break;
        case "Onzas":
          valor = "no se puede convertir onzas a onzas";
          break;
      }
      break;
    //Gramos Calculos
    case "Gramos":
      switch (v2) {
        case "Seleccione un peso":
          break;
        case "Kilogramos":
          valor = n1 / 1000;
          break;
        case "Onzas":
          valor = n1 / 28.35;
          break;
        case "Miligramos":
          valor = n1 * 1000;
          break;
        case "Quilates":
          valor = n1 * 5;
          break;
        case "Libras":
          valor = n1 / 453;
          break;
        case "Gramos":
          valor = "no se puede convertir gramos a gramos";
          break;
      }
      break;
    //Miligramos calculos
    case "Miligramos":
      switch (v2) {
        case "":
          valor = "Seleccione un peso";
          break;
        case "Libras":
          valor = n1 / 453600;

          break;
        case "Kilogramos":
          valor = n1 / 1000000;
          break;
        case "Onzas":
          valor = n1 / 28350;
          break;
        case "Gramos":
          valor = n1 / 1000;
          break;
        case "Quilates":
          valor = n1 / 200;
          break;
        case "Miligramos":
          valor = "no se puede convertir miligramos a miligramos";
          break;
      }
      break;
    //Quilates calculos
    case "Quilates":
      switch (v2) {
        case "Quilates":
          valor = "no se puede convertir quilates a quilates";
          break;
        case "Kilogramos":
          valor = n1 / 5000;
          break;
        case "Libras":
          valor = n1 / 2268;
          break;
        case "Gramos":
          valor = n1 / 5;
          break;
        case "Miligramos":
          valor = n1 * 200;
          break;
        case "Onzas":
          valor = n1 / 141.7;
          break;
        case "":
          valor = "Seleccione un peso";
          break;
      }
      break;
  }

  return valor.toString();
}
