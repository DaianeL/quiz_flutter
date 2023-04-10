import 'package:flutter/material.dart';
import 'package:quiz_flutter/resultados.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz [
      {
        "Pergunta" : "Flutter é:",
        "Respostas" : [
          "Um framework ",
          "Um componente",
          "Uma string",
          "Uma classe",
        ],
        "alternativa correta" :1,
        
      }
    ];
    quiz.add(

      {
        "Pergunta" : "Qual a linguagem de programação do Flutter?",
        "Respostas" : [
          "Java ",
          "Java.script",
          "Dart",
          "Vue.js",
        ],
        "alternativa correta" :3,
        
      }

    );
    print('Dados do Quiz');
    //print(quiz);

    void respondeu(int respondeuNumero) {
      setState(() {
        if(quiz[perguntaNumero -1]['alternativa correta'] == respondeuNumero){
          print('acertou');
          acertos++;
        } else {
          print('errou');
          erros++;
        }
      }
        print('acertos totais' : $acertos erros totais: $erros);
        if (perguntaNumero) == 2) {
          print('Terminou o quiz');
          Navigator.pushNamed(context, 'Resultado', arguments: 'Resultado',
          arguments: Argumentos(acertos));

        } else {
          perguntaNumero++;
        }
    }
}

  return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz Flutter')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Align(
          alignment: Alignment.topRight,
          child: Text('Pergunta $perguntaNumero de 2', 
          style: TextStyle(fontSize: 20))),
          ];
          Text('Pergunta:\n\n' + quiz[perguntaNumero - 0]['pergunta'],
                
          style: TextStyle(fontSize: 20)),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
            onPressed: () {
             print('pressionado 1');
             }, 
            child: 
          Text(quiz[perguntaNumero - 1]['resposta'][0],
          style: TextStyle(fontSize: 20)),
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
         ),
       ),
      ),
     ),
   ),
  ),
 );
}

