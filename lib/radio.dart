import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  Option({this.opt, this.correct, required this.count});
  final opt;
  final correct;
  final ValueChanged<bool> count;

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
bool fill = false;
bool is_correct = false;

@override
  void initState() {
    fill = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
     child: GestureDetector(
       child: (fill)?
       Container(
         alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
         child: Text(widget.opt,style: 
         TextStyle(color: Colors.white),), 
         color: Colors.amber,) :
          Container(
            child: Text(widget.opt),
            alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFC1C1C1)),
          borderRadius: BorderRadius.circular(15)),),
        onTap: (){
          setState(() {
            fill = !fill;
            if(widget.opt == widget.correct)
               is_correct = true;
          });
               widget.count(is_correct);
        },
       ),
    );
  }
}