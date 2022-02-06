import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final result;
  final reset;
  const Result({this.reset,this.result });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(100)),
            Text("Your Score Is", style: TextStyle(fontSize: 30),),
            Padding(padding: const EdgeInsets.only(top: 20)),
            Text("$result/100", style: TextStyle(fontSize: 50)),
            Padding(padding: const EdgeInsets.all(60)),
            GestureDetector(
            child: Container(
              child: Center(child: Text("RETAKE TRIVIA", style: TextStyle(color: Colors.blue[800], fontSize: 20, fontWeight: FontWeight.w700),)),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onTap:  reset
          ),
          ],
        ),)
    );
  }
}