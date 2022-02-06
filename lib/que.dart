import 'package:flutter/material.dart';
import 'package:trivia/radio.dart';

class QuePage extends StatefulWidget {
  final question;
  final que_no;
  final correct;
  final incorrect;
  final mark;   final next;
  QuePage({ this.question, this.que_no, this.correct, this.incorrect, this.mark, this.next});

  @override
  _QuePageState createState() => _QuePageState();
}

class _QuePageState extends State<QuePage> {
late bool value= false;
late bool selected= false;

  @override
  Widget build(BuildContext context) {
    final List<dynamic> choice = widget.incorrect;
    choice.add(widget.correct);
    choice.shuffle();

    return SingleChildScrollView(
      child: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.all(40)),
              Container(
                margin: EdgeInsets.all(25),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(" Question ${widget.que_no+1}", style: TextStyle(color: Colors.lightBlue),),
                  Text("${widget.question}"),
                  Padding(padding: const EdgeInsets.only(top: 10)),
                  Text("Choices", style: TextStyle(color: Colors.lightBlue)),
                  Option(opt: choice[0], count: (newvalue) => value = newvalue,correct: widget.correct,),
                  Option(opt: choice[1], count: (newvalue) => value = newvalue, correct: widget.correct),
                  Option(opt: choice[2], count: (newvalue) => value = newvalue, correct: widget.correct),
                  Option(opt: choice[3], count: (newvalue) => value = newvalue, correct: widget.correct),
              Padding(padding: const EdgeInsets.only(top: 20)),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: GestureDetector(
                child: Container(
                    child: Center(
                      child: Row(
                      children: [
                        Padding( padding: const EdgeInsets.all(20.0),),
                        Text("NEXT", style: TextStyle(color: Colors.blue[800], fontSize: 20, fontWeight: FontWeight.w700),),
                        Padding(padding: const EdgeInsets.only(left: 25), 
                      child: Icon(Icons.arrow_forward,))
                      ],
                    )),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5),
                    ),
                ),
                onTap:  (value && selected)? widget.mark: widget.next,
              ),
                  ),
             ],)),
            ],
          ),
      ),
    );
  }
}

