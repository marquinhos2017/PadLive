import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PadLive',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PadLive'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pad_a = AudioPlayer();
  bool pad_a_bool = false;
  @override
  void dispose() {
    pad_a.dispose();
    super.dispose();
  }

  void _play_a() {
    pad_a.play(AssetSource('A.mp3'));
    setState(() {
      pad_a_bool = !pad_a_bool; // Toggle the value
    });
    print(pad_a_bool);
  }

  void _stop_a() {
    pad_a.stop();
    setState(() {
      pad_a_bool = !pad_a_bool; // Toggle the value
    });
    print(pad_a_bool);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text(
              "C",
              style: TextStyle(
                color: pad_a_bool == true ? Colors.red : Colors.white,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                          color:
                              pad_a_bool == true ? Colors.red : Colors.white))),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (pad_a_bool == true) {
                    return Colors.transparent;
                  } else {
                    // Return another color if the condition is false
                    return Colors.transparent; // Or any other color you prefer
                  }
                },
              ),
              elevation: MaterialStateProperty.all(0), // Set elevation to 0
              overlayColor: MaterialStateProperty.all(
                  Colors.transparent), // Remove overlay color
              // Add other properties as needed
            ),
            onPressed: () {
              if (pad_a_bool == false) {
                _play_a();
              } else {
                _stop_a();
              }
            },
          ),
        ],
      ),
    );
  }
}
