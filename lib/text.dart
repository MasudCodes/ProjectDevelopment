import 'package:flutter/material.dart';
import 'package:tts/tts.dart';

TextEditingController controller = new TextEditingController();

class TextToSpeech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text to Speech"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: controller,
                ),
              ),
              RaisedButton(
                child: Text("SPEAK"),
                onPressed: speak,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

speak() async {
  Tts.speak(controller.text);
}
