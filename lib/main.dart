import 'package:calculator/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main()
{
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 130, left: 90),
                  child: Column(children: [
                    Text(userInput.toString() , style: TextStyle(fontSize: 30 , color: Colors.white),),
                    SizedBox(height: 20,),
                    Text(answer.toString() , style: TextStyle(fontSize: 30 , color: Colors.white),)
                  ],),
                ),
              ),


              Expanded(
                flex: 2,
                child: Column(children: [

                  Row(children: [
                    Mybutton(title: 'AC' , onPress:(){
                      userInput = '';
                      answer = '';
                      setState(() {

                      });
                    }),
                    Mybutton(title: '+/-' , onPress:(){
                      userInput += '+/-';
                      setState(() {

                      });
                    }),
                    Mybutton(title: '%' , onPress:(){
                      userInput += '%';
                      setState(() {

                      });
                    }),
                    Mybutton(
                        color: Colors.orange,
                        title: '/' , onPress:(){
                      userInput += '/';
                      setState(() {

                      });

                    }),
                  ],),
                  Row(children: [
                    Mybutton(title: '7' , onPress:(){
                      userInput += '7';
                      setState(() {

                      });
                    }),
                    Mybutton(title: '8' , onPress:(){
                      userInput += '8';
                      setState(() {

                      });
                    }),
                    Mybutton(title: '0' , onPress:(){
                      userInput += '0';
                      setState(() {

                      });
                    }),
                    Mybutton(color: Colors.orange,title: 'x' , onPress:(){
                      userInput += 'x';
                      setState(() {

                      });
                    }),
                  ],),
                  Row(children: [
                    Mybutton(title: '4' , onPress:(){
                      userInput += '4';
                      setState(() {

                      });
                    }),
                    Mybutton(title: '5' , onPress:(){
                      userInput += '5';
                      setState(() {

                      });
                    }),
                    Mybutton(title: '6' , onPress:(){
                      userInput += '6';
                      setState(() {

                      });
                    }),
                    Mybutton(color: Colors.orange,title: '-' , onPress:(){
                      userInput += '-';
                      setState(() {

                      });
                    }),
                  ],),
                  Row(children: [
                    Mybutton(title: '3' , onPress:(){
                      userInput += '3';
                      setState(() {

                      });
                    }),
                    Mybutton(title: '2' , onPress:(){
                      userInput += '2';
                      setState(() {

                      });
                    }),
                    Mybutton(title: '1' , onPress:(){
                      userInput += '1';
                      setState(() {

                      });
                    }),
                    Mybutton(color: Colors.orange,title: '+' , onPress:(){
                      userInput += '+';
                      setState(() {

                      });
                    }),
                  ],),
                  Row(children: [
                    Mybutton(title: '0' , onPress:(){
                      userInput += "0";
                      setState(() {

                      });
                    }),
                    Mybutton(title: '.' , onPress:(){
                      userInput += '.';
                      setState(() {

                      });
                    }),
                    Mybutton(title: 'DEL' , onPress:(){
                      userInput = userInput.substring(0 , userInput.length - 1);
                      setState(() {

                      });
                    }),
                    Mybutton(color: Colors.orange,title: '=' , onPress:(){
                      equalPrs();
                      setState(() {
                        
                      });
                    }),
                  ],),


                ],),
              )


            ],
          ),
        )

    );;
  }
  void equalPrs()
  {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();

  }
}





