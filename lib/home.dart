import 'package:flutter/material.dart';

class Home extends StatelessWidget
{ 
    const  Home(this.switchScreen,{super.key});
    final void Function() switchScreen;
    @override
    Widget build(BuildContext context) 
    {
      return  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png',width:550 ,height: 110,color:Colors.white.withOpacity(0.6)),
            const SizedBox(height: 50,),
            const Text("Learn Flutter",style: TextStyle(fontSize: 15,color: Colors.white),),
            const SizedBox(height: 40,),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: switchScreen, 
              label: const Text("Start Quize"),
              icon: const Icon(Icons.arrow_back),
              )
             
          ],
        ),
        );
    }
}