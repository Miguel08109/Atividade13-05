import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(title: Text("Quizz"), backgroundColor: Colors.green,),
        
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),

          child: Column(
            children: [
              DropdownMenu<String>(
                initialSelection: 'Pix',
                label: const Text("Forma de Pagamento"),
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: 'Pix', label: 'Pix'),
                  DropdownMenuEntry(value: 'Boleto', label: 'Boleto Bancário'),
                  DropdownMenuEntry(value: 'Cortão', label: 'Cartão de Crédito'),
                ],
              )
            ],
          ),
          ),
        ),
      );
  }
}
