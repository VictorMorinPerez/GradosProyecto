import 'package:flutter/material.dart';
import 'package:programa_de_grados/Clases%20Grados/C%C2%B0.dart';
import 'package:programa_de_grados/Clases%20Grados/F%C2%B0.dart';
import 'package:programa_de_grados/Clases%20Grados/K%C2%B0.dart';
//import 'package:grados_app/classes/Grados.dart';


class pagina6 extends StatefulWidget {
  const pagina6({super.key});

  @override
  State<pagina6> createState() => _Pagina6TabState();
}

class _Pagina6TabState extends State<pagina6> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Kelvin grados = new Kelvin();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('KELVIN-FARENHEIT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                hintText: 'Ingrese los grados en K°',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('CONVERTIR'),
              onPressed: () {
                 double kelvin = double.parse(_textEditingController.text);
                double fahrenheit = grados.kelvinToFahrenheit(kelvin);
                String resultado = fahrenheit.toString();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("¿DESEA MOSTRAR RESULTADO:°?"+_labelGrados),
                    action: SnackBarAction(
                      label: 'MOSTRAR CONVERSION',
                      onPressed: () {
                        setState(() {
                        _labelGrados = resultado;
                        });
                      },      
                      ),
                  ),
                );
                
              },
            ),
            
            SizedBox(height: 20),
            Text('GRADOS F° :$_labelGrados',style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  
  }
}
