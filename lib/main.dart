import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:ShowHide(),
    );
  }
}

class ShowHide extends StatefulWidget{
  @override
  _ShowHideState createState() => _ShowHideState();
}

class _ShowHideState extends State<ShowHide>{

  bool isVisible = true;

  void showWidget(){
    setState(() {
      isVisible = true;
    });
  }

  void hideWidget(){
    setState(() {
      isVisible = false;
    });

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title: Text("zichill and Hyde"),
      ),
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton
              (onPressed: () { showWidget(); },
            child: Text("SHOW")),
            ElevatedButton(onPressed: (){ hideWidget();},
                child: Text("HIDE")),
            ElevatedButton(onPressed: (){ },
                child: Text("Initialize")),
            Visibility(visible: isVisible, child: Text("This is Text", style: TextStyle(fontSize: 30.0),)),
            Visibility(visible: isVisible, child: Text("This is Text2", style: TextStyle(fontSize: 45)))
        
          ],
        ),
      )
    );
  }
}