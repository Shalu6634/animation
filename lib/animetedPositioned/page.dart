import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatePositionWidget extends StatefulWidget {
  const AnimatePositionWidget({super.key});

  @override
  State<AnimatePositionWidget> createState() => _AnimatePositionWidgetState();
}
TextEditingController txtName = TextEditingController();

class _AnimatePositionWidgetState extends State<AnimatePositionWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Animated Widget',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: TextField(
              controller: txtName,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          submit=!submit;
        },
        child:Icon(Icons.arrow_forward,color: Colors.white,),
      ),
    );
  }
}

bool submit = false;