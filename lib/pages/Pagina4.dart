import 'package:flutter/material.dart';
import 'package:programa_de_grados/Clases%20Grados/C%C2%B0.dart';
import 'package:programa_de_grados/Clases%20Grados/F%C2%B0.dart';
//import 'package:grados_app/classes/Grados.dart';


class pagina4 extends StatefulWidget {
  const pagina4({super.key});

  @override
  State<pagina4> createState() => _Pagina4TabState();
}

class _Pagina4TabState extends State<pagina4> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Fahrenheit grados = new Fahrenheit();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('FARENHEIT-KELVIN'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                hintText: 'Ingrese los grados en F°',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('CONVERTIR'),
              onPressed: () {
                double fahrenheit = double.parse(_textEditingController.text);
                double kelvin = grados.fahrenheitToKelvin(fahrenheit);
                String resultado = kelvin.toString();
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
            Text('GRADOS K° :$_labelGrados',style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  
  }
}
