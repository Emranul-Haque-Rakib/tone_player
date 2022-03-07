import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child:
          Center(

            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: (){
                        final player= AudioCache();
                        player.play('lib/tone/eminem.wav');
                      }
                      , child: Text("Music 1")),
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: (){
                        final player= AudioCache();
                        player.play('lib/tone/kevin_gates.wav');
                      }
                      , child: Text("Music 2")),
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: (){
                        final player= AudioCache();
                        player.play('lib/tone/my_best_friend.wav');
                      }
                      , child: Text("Music 3")),
                ),
              ],

            )

          )
    )
      );



    throw UnimplementedError();

  }

}

