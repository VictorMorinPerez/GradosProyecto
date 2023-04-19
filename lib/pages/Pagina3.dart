import 'package:flutter/material.dart';
import 'package:programa_de_grados/Clases%20Grados/C%C2%B0.dart';
import 'package:programa_de_grados/Clases%20Grados/F%C2%B0.dart';
//import 'package:grados_app/classes/Grados.dart';


class pagina3 extends StatefulWidget {
  const pagina3({super.key});

  @override
  State<pagina3> createState() => _Pagina3TabState();
}

class _Pagina3TabState extends State<pagina3> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Fahrenheit grados = new Fahrenheit();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('FARENHEIT-CELSIUS'),
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
                double celsius = grados.fahrenheitToCelsius(fahrenheit);
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
