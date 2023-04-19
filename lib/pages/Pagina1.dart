import 'package:flutter/material.dart';
import 'package:programa_de_grados/Clases%20Grados/C%C2%B0.dart';
//import 'package:grados_app/classes/Grados.dart';
//cambio

class pagina1  extends StatefulWidget {
  const pagina1({super.key});

  @override
  State<pagina1> createState() => _Pagina1TabState();
}

class _Pagina1TabState extends State<pagina1> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Celsius grados = new Celsius();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('CELSIUS-FARENHEIT'),
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
                double fahrenheit = grados.celsiusToFahrenheit(celsius);
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
