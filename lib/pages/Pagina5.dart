import 'package:flutter/material.dart';
import 'package:programa_de_grados/Clases%20Grados/C%C2%B0.dart';
import 'package:programa_de_grados/Clases%20Grados/F%C2%B0.dart';
import 'package:programa_de_grados/Clases%20Grados/K%C2%B0.dart';
//import 'package:grados_app/classes/Grados.dart';


class pagina5 extends StatefulWidget {
  const pagina5({super.key});

  @override
  State<pagina5> createState() => _Pagina5TabState();
}

class _Pagina5TabState extends State<pagina5> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Kelvin grados = new Kelvin();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('KELVIN-CELSIUS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                hintText: 'Ingrese los grados en k°',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('CONVERTIR'),
              onPressed: () {
                 double kelvin = double.parse(_textEditingController.text);
                double celsius = grados.kelvinToCelsius(kelvin);
                String resultado = celsius.toString();
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
            Text('GRADOS C° :$_labelGrados',style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  
  }
}
