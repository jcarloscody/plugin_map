import 'package:flutter/material.dart';
import 'package:poc_map/poc_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Plugin Map',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AbsorbPointer(
                child: PocMap.mapStatic(
                  latitude: -8.0598718,
                  longitude: -34.8725597,
                  markerId: 'id_1',
                  zoom: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
