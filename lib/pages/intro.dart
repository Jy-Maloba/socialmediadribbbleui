import 'package:flutter/material.dart';
import 'package:socialmediadribbleui/pages/home.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[400],
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.white,
                ]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.rotate_right_outlined, color: Colors.blue[900], size: 60,),
              const SizedBox(height: 12,),
              const Text(
                'Find your ',
                style: TextStyle(
                  fontSize: 53,
                ),
              ),
              Text(
                'dream Job ',
                style: TextStyle(
                  fontSize: 53,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue[700],
                ),
              ),
              const Row(
                children: [
                  Text(
                    'and ',
                    style: TextStyle(
                      fontSize: 53,
                    ),
                  ),
                  Text(
                    'new ',
                    style: TextStyle(
                      fontSize: 53,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Text(
                'teammates',
                style: TextStyle(
                  fontSize: 53,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Home()));
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Center(child: Text(
                    'Go ahead', style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
