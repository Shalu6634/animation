import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: (fly==true)?Colors.teal:Colors.blue,
          centerTitle: true,
          title: const Text(
            'Animated Container',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 600,
                width: double.infinity,
                color: Colors.transparent,
                child: AnimatedAlign(
                  duration: const Duration(seconds: 1),
                  alignment: fly==true?Alignment.center:Alignment.bottomCenter,
                  child: Icon(
                    Icons.airplanemode_active,
                    color: (fly==true)?Colors.teal:Colors.blue,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                     fly=!fly;
                     print('============$fly');
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                      color:(fly==true)?Colors.teal:Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.airplanemode_active,
                          color: Colors.white,
                          size: 33,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          (fly==true)?'Success ! Tickets Booked':'Book Your Tickets Now',
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

bool fly = false;

