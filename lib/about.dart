import 'package:flutter/material.dart';

import 'contact.dart';
import 'package:untitled5/about.dart';

class About extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(" ABOUT PAGE"),
        centerTitle: true,
        backgroundColor: Colors.green,),
      body: Stack(
        children: <Widget>[
          Image.asset('',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Colors.black.withOpacity(1),

                      Colors.black.withOpacity(0.9),

                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ],
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container())),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Text(
                "This app about to Make an appointment with a Doctor that you want to visit it. You don't need to go to the hospital, you just use any device that you have to make an appointment",
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.lime,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const Contact()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
}

