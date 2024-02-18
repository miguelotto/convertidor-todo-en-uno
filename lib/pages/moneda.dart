import 'package:convertidor/funciones/divisas.dart';
import 'package:convertidor/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Money extends StatelessWidget {
  const Money({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: home(),
    );
  }
}

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  final TextEditingController _valortext = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  //final TextEditingController _valortext2 = TextEditingController();
  String result = "0";
  String v1 = "";
  String v2 = "";
  List<String> items = [
    "",
    "Euros",
    "Dolar",
    "Yen",
    "Bolivar Soberano",
    "Peso Colombiano"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      //backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Convertidor de Moneda'),
        foregroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 450),
            child: IconButton(
              onPressed: () {
                _showPageMain(context);
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.black54,
            ),
          ),
        ],
        backgroundColor: Colors.grey[800],
/*         title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 70),
            child: Text(
              "Convertidor de peso",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ), */
      ),
      //drawer: const Drawer(),
      body: Center(
        child: Container(
          width: 350,
          height: 550,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(10),
            color: Colors
                .grey[900], //hay que colocar elcolor aqui porque sino da error
          ),
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 24),
                  child: Text(
                    "Coloque la cantidad",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Form(
                          autovalidateMode:
                              AutovalidateMode.always, //siemppre activo
                          key: _formkey,
                          child: TextFormField(
                              controller: _valortext,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  errorText:
                                      _formkey.currentState?.validate() == false
                                          ? "Numero invalido"
                                          : null),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Debe colocar numeros";
                                } /* else if (double.tryParse(value) == null) {
                                  return "ingrese solo numeros";
                                } */
                                return null;
                              },
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'^\d+\.?\d{0,2}')),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 25),
                      child: Text(
                        "Seleccione la moneda",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Colors.grey[800]),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: 300,
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            value:
                                v1, //con esto es que haremos que el valor al seleccionar pues sea el que se selecciono
                            icon: const Icon(Icons.keyboard_arrow_down_rounded),
                            //: Alignment.bottomRight,
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newvalue) {
                              setState(() {
                                v1 = newvalue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 25),
                      child: Text(
                        "Seleccione la moneda en la que se convertira",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(canvasColor: Colors.grey),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: 300,
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            value: v2,
                            icon: const Icon(Icons.keyboard_arrow_down_rounded),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newvalue) {
                              setState(() {
                                v2 = newvalue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (_formkey.currentState!.validate()) {
                                double n1 =
                                    double.tryParse(_valortext.text) ?? 0;
                                result = compro(v1, v2, n1);
                              }
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey[800]),
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.white),
                          ),
                          child: const Text(
                            "Calcular",
                            style: TextStyle(fontFamily: "Roboto"),
                          )),
                    ),
                  )
                ],
              ),
              /*  Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text(
                        "Resultado:",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ), */
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        result.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showPageMain(BuildContext context) {
  final ruta = MaterialPageRoute(builder: (BuildContext context) {
    return MyApp();
  });
  Navigator.of(context).push(ruta);
}
