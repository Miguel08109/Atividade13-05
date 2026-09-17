import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Montador de Perfil de Treino',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
      ),
      home: const MontPerfilTreino(title: 'Montador de Perfil de Treino'),
    );
  }
}

class MontPerfilTreino extends StatefulWidget {
  const MontPerfilTreino({super.key, required this.title});

  final String title;

  @override
  State<MontPerfilTreino> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MontPerfilTreino> {
 // int _counter = 0;
static const List<String> _tagsDisponiveis = [
  'Vegetariano',
  'Vegano',
  'Sem lactose',
  'Sem Glúten',
  'Low Carb',
];

static const List<String> _tagsPadrao = [];


late List<String> _tagsSelecionadas;

@override
void initState() {
  super.initState();
  _tagsSelecionadas = List<String>.from(_tagsPadrao);
} 

void _resetarValores() {
  setState(() {
    _tagsSelecionadas = List<String>.from(_tagsPadrao);
  });
}

void _SalvarFormulario() {
  print("Restrições Alimentares: $_tagsSelecionadas");
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Montador de Perfil de Treino"),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Divider(height: 32),
            
            
            Text('Objetivo do Treino'),


            const Divider(height: 32),

            //SegmentButton
            Text(
              ""
            ),

 


            Text('Nível de Experiência'),
            const Divider(height: 32),


            Text('Restrições Alimentares'),
            const SizedBox(height: 8),
            
            Wrap(
              spacing: 8.0,
              children: _tagsDisponiveis.map((tag) {
                final estaSelecionado = _tagsSelecionadas.contains(tag);
                return FilterChip(
                  label: Text(tag),
                  selected: estaSelecionado,
                  onSelected: (bool selecionado){
                    setState(() {
                      if (selecionado) {
                        _tagsSelecionadas.add(tag);
                      } else {
                        _tagsSelecionadas.remove(tag);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const Divider(height: 32),
            Text('Alergias'),
            const SizedBox(height: 8),
            //InputChip

            const Divider(height: 32),

            Text('Tempo Diário'),
            const SizedBox(height: 8),

            
          ],
        ),
      ),
    );
  }
}
