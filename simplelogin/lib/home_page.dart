import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag='home-page';
  
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child:CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),

        )
        ),
        );

    final welcome= Padding(
      padding: EdgeInsets.all(8.0),
      child:Text(
        'Welcome Theo, How can I help you?',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      
      )
      );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child:Text(
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for  will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      
      )
      );

      final body = Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.lightBlueAccent,
          ])
        ),
        child: Column( 
          children: <Widget>[alucard,welcome,lorem],
        )

        );

        return Scaffold(
          body: body,
        );
  }
}