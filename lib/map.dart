import 'package:flutter/material.dart';
import 'package:logic_1/box.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffEEEEEE),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: const Icon(Icons.menu, color: Colors.white),
            title: const Text(
              'Map',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: List.generate(boxes.length, (index) => custom(boxes[index]['text'],boxes[index]['icon']),),
            ),
          ),
        ),
      ),
    );
  }
}

Widget custom(String text, IconData icon) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 15),
    height: 85,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        const SizedBox(
          width: 200,
        ),
        Icon(icon),
      ],
    ),
  );
}
