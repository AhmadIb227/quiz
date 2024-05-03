import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/summary.dart';

// import 'package:testt/app-02/quize.dart';
class Result extends StatelessWidget {
  const Result(this.selectedAnswere,this.restart, {super.key, });
  final void Function() restart;
  final List<String> selectedAnswere;
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswere.length; i++) {
      summary.add({
        'question_index': i, //رقم السؤال
        'question': questions[i].text, //نص السؤال
        'current_question': questions[i].answere[0], //الجواب الصحيح
        'user_answere': selectedAnswere[i], //جواب المستخدم
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
     int numCurrentanswred =0;
     //var summaryData= summaryData();
    //w1
      // for (var i = 0; i <selectedAnswere.length ; i++){
      //     if( summaryData[i]['user_answere']== summaryData[i]['current_question']){ 
      //     numCurrentanswred++;
      //   }
      // }

     //w2
        for(var element in summaryData ){
          if(  element['user_answere']==element['current_question']){
              numCurrentanswred++;
          }
        }
     //w3
        // int numCurrentanswred =summaryData.where((element) => element['user_answere']==element['current_question']).length;

    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
           Text(
            "You ansswered $numCurrentanswred out of ${questions.length} questons",
            style: const TextStyle(fontSize: 12, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          // ...selectedAnswere.map((e)=>Text(e)),
          Summary((summaryData)),
          const SizedBox(height: 30),
          TextButton.icon(
              onPressed: restart,
              icon: const Icon(
                Icons.restart_alt_outlined,
                color: Colors.amberAccent,
              ),
              label: const Text(
                "Restart Quize!",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
