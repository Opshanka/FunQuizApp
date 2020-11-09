import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);

  String get resultPhase{
    String resultText="You did it";
    if(resultScore<=8){
      resultText="You are awesome and innocent";
    }
    else if(resultScore<=12){
      resultText="Pretty Likable";
    }
    else if(resultScore<=18){
      resultText="You are ... strange";
    }
    else{
      resultText="You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(resultPhase,style: TextStyle(fontSize: 36.0,fontWeight: FontWeight.bold),),
            FlatButton(child: Text("Reset Quiz"),onPressed: resetHandler,color: Colors.cyan,textColor: Colors.white,),
          ],
        ),
    );
  }
}
