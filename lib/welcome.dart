import 'package:flutter/material.dart';

import 'home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 350)),
         Text("TRIVIA APP", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),),
         Padding(padding: const EdgeInsets.only(top: 60)),
          GestureDetector(
            child: Container(
              child: Center(
                child: Row(
                children: [
                  Padding( padding: const EdgeInsets.all(20.0),),
                  Text("TAKE TRIVIA", style: TextStyle(color: Colors.blue[800], fontSize: 20, fontWeight: FontWeight.w700),),
                  Padding(padding: const EdgeInsets.only(left: 25), 
                child: Icon(Icons.arrow_forward,))
                ],
              )),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(5),
               /* boxShadow: [
                  BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                offset: Offset(0, 2), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
             ),
                ]*/
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
          ),
    ],),),);
  }
}
