import 'package:flutter/material.dart';
import 'package:project/pages/chatmessage.dart';
import 'dart:convert';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FirstPageWidget(),
    );
  }
}

class FirstPageWidget extends StatelessWidget {
  const FirstPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      
      backgroundColor: Colors.lightBlue,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/catschat.gif',
                height: 500,
                width: 600,
              ),
              SizedBox(
                height: 50,
              ),
              FloatingActionButton.extended(
                onPressed: (){
                  onButtonClicked(context);
                },
                splashColor: Colors.blueGrey,
                backgroundColor: Color.fromARGB(255, 197, 105, 0),
                label: Text('click to chat'),
              ),
          ],
        ),
    
      ),
    );
  }
}

void onButtonClicked(BuildContext context) {
  
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => ChatPage(),
  ));
}