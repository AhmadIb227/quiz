import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/answer_button.dart';
import './data/questions.dart';
class Question extends StatefulWidget 
{
  const Question( this.onSelectedAnswere, {super.key});
  final void Function(String) onSelectedAnswere;
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question>
{
    var currentQuestionIndex = 0;

    void answereQuestion( String answere )
    {
      widget.onSelectedAnswere(answere);
      setState(() {
        currentQuestionIndex++;
      });
    }
    
    @override
    Widget build(BuildContext context) 
    {
      final currentQuestion=questions[currentQuestionIndex];
      return  Container(
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
               Text(
                currentQuestion.text,
                style: GoogleFonts.lora(
                  fontSize: 28,
                  color: Colors.white
                ),
                // const TextStyle(
                //   fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal
                //   ),
                  textAlign: TextAlign.center,),
              //const Text("Learn Flutter",style: TextStyle(fontSize: 15,color: Colors.white),),
              //w1
              // const SizedBox(height: 40),
              // AnswerButton(answreText: currentQuestion.answere[0], onPress: (){}),
              // const SizedBox(height: 40),
              // AnswerButton(answreText:  currentQuestion.answere[1], onPress: (){}),
              // const SizedBox(height: 40),
              // AnswerButton(answreText:  currentQuestion.answere[2], onPress: (){}),
              // const SizedBox(height: 40),
              // AnswerButton(answreText:  currentQuestion.answere[3], onPress: (){}),
              //or w2
              
                const SizedBox(height: 60),
              ...currentQuestion.ShuffledAnswer.map(//... : spriteoperatoe  وهي تستخدم لاخراج الليست الداخلية  وجعلها كعنصر عادي في ليست خارجية 
                (e){
                  return Container(
                    margin: const EdgeInsets.all(15),
                    child: AnswerButton(
                      answreText: e,
                       onPress: ()=> answereQuestion(e)
                       ));
              })
              ],
            ),
      );
    }
}
