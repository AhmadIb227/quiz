import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/home.dart';
import 'package:quiz/questions.dart';
import 'package:quiz/result.dart';
class Quize extends StatefulWidget 
{
  const Quize({super.key});
  @override
  State<Quize> createState() => _QuizeState();
}

class _QuizeState extends State<Quize> 
{
    List<String> selectedAnswere=[];
    
    void chooseAnswer(String answere)
    {
      selectedAnswere.add(answere);
      if(selectedAnswere.length == questions.length)
      {
        setState(() {
            activeScreen=  Result(selectedAnswere,restart);
            selectedAnswere=[];
        });
      }
      log(selectedAnswere.toString());
    }

    Widget ?activeScreen;

    @override
    void initState()
    {
      super.initState();
      activeScreen= Home(switchScreen);
    }

    void switchScreen()
    {
      setState(()
      {
        activeScreen=  Question(chooseAnswer);
      });
    }
     void restart()
    {
      setState(()
      {
        setState(() {
          selectedAnswere=[];
          activeScreen=  Home(switchScreen);
        });
      });
    }

    @override
    Widget build(BuildContext context)
    {
      return  MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors:[
                  Colors.deepPurpleAccent,
                  Colors.purpleAccent
                ] 
              )
            ),
            child:  activeScreen,
            ),
        ),
      );
    } 
}
 