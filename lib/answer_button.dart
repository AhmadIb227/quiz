import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget 
{
    const AnswerButton({super.key , required this.answreText ,   required this.onPress});
    final String answreText;
    final void Function() onPress;//شان ابعتله ياها لما استدعي هذا الكلاس 

    @override
    Widget build(BuildContext context) 
    {
      return ElevatedButton(
        onPressed: onPress, //answereQuestion
        style: ElevatedButton.styleFrom
        (
            foregroundColor:const  Color.fromARGB(255, 255, 255, 255),
            backgroundColor: Colors.deepPurple[900],
            // padding:const EdgeInsets.all(20)),الطريقة تُستخدم لإعطاء حشوة متساوية من جميع الجوانب بقيمة 
            //or   
            //padding:const EdgeInsets.fromLTRB(20, 25, 20, 25)ذه الطريقة تُستخدم لتحديد الحشوة لكل جانب على حدة، حيث تُعطى القيم 20 لليمين واليسار، و25 للأعلى والأسفل.//or
            padding:const EdgeInsets.symmetric(
              vertical: 18,//افقي
              horizontal: 50//عمودي
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(58),
            ),
        ),
        child:Text(answreText , textAlign: TextAlign.center,),
      );
    }

}
