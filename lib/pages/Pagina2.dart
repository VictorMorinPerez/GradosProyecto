import 'package:flutter/material.dart';
import 'package:programa_de_grados/Clases%20Grados/C%C2%B0.dart';
//import 'package:grados_app/classes/Grados.dart';


class pagina2  extends StatefulWidget {
  const pagina2({super.key});

  @override
  State<pagina2> createState() => _Pagina2TabState();
}

class _Pagina2TabState extends State<pagina2> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Celsius grados = new Celsius();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('CELSIUS-KELVIN'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                hintText: 'Ingrese los grados en C°',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('CONVERTIR'),
              onPressed: () {
                double celsius = double.parse(_textEditingController.text);
                double kelvin = grados.celsiusToKelvin(celsius);
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
