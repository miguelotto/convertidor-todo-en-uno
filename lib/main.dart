import 'package:convertidor/pages/convert.dart';
import 'package:convertidor/pages/longitud.dart';
import 'package:convertidor/pages/moneda.dart';
import 'package:convertidor/pages/temperature.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text('Todo en uno'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[800],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 12),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  //color: Colors.grey,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _showPesoPage(context);
                    },
                    icon: const Icon(Icons.balance_outlined),
                    label: const Text("Convertidor de Peso"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[900],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(16.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        //color: Colors.grey,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            _showMoneyPage(context);
                          },
                          icon: const Icon(Icons.monetization_on),
                          label: const Text("Convertidor de Moneda"),
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              padding: const EdgeInsets.all(16.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 20),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  //color: Colors.grey,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _showLongitudPage(context);
                      });
                    },
                    icon: const Icon(Icons.run_circle_sharp),
                    label: const Text("Convertidor de Longitud"),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.grey[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(16.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        //color: Colors.grey,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              _showTemperaturePage(context);
                            });
                          },
                          icon: const Icon(Icons.thermostat_auto),
                          label: const Text("Convertidor de Temperatura"),
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              padding: const EdgeInsets.all(16.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showPesoPage(BuildContext context) {
    final ruta = MaterialPageRoute(builder: (BuildContext context) {
      return const Peso();
    });
    Navigator.of(context).push(ruta);
  }

  void _showMoneyPage(BuildContext context) {
    final ruta = MaterialPageRoute(builder: (BuildContext context) {
      return const Money();
    });
    Navigator.of(context).push(ruta);
  }

  void _showLongitudPage(BuildContext context) {
    final ruta = MaterialPageRoute(builder: (BuildContext context) {
      return const longi();
    });
    Navigator.of(context).push(ruta);
  }

  void _showTemperaturePage(BuildContext context) {
    final ruta = MaterialPageRoute(builder: (BuildContext context) {
      return const Temp();
    });
    Navigator.of(context).push(ruta);
  }
}
