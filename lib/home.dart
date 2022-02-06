import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trivia/que.dart';
import 'package:trivia/result.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String url = "https://opentdb.com/api.php?amount=10&type=multiple";
 List data = []; 
 int que_no = 0; 
 int score = 0;

 Future<dynamic> makereq() async {
   http.Response response = await http.get(Uri.parse(url), headers: {'Accept': 'application/json'});
   
   setState(() {
      var extract = json.decode(response.body);
     data = extract["results"];
   });
 } 

void quizAnswer(){
  setState(() {
    score = score + 10;
    que_no = que_no + 1;
  });
}

void netQues(){
  setState(() {
    que_no = que_no + 1;
  });
}

 void quizReset(){
   setState(() {
     score = 0;
     que_no = 0;
   });
   makereq();
 }

 @override
  void initState() {
    super.initState();
    makereq();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 8.0)),
          Center(child: Text("TRIVIA APP", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),)),
          (que_no<data.length)?QuePage(
            question: data[que_no]["question"],
            que_no: que_no,
            correct: data[que_no]["correct_answer"],
            incorrect: data[que_no]["incorrect_answers"],
            mark: quizAnswer,
            next:  netQues,):Result(
              reset: quizReset,
              result: score,
            ),
        ],
      ),
    );
  }
}