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
  final pad_c = AudioPlayer();
  bool pad_c_bool = false;

  final pad_c_sustenido = AudioPlayer();
  bool pad_c_sustenido_bool = false;

  final pad_d = AudioPlayer();
  bool pad_d_bool = false;

  @override
  void dispose() {
    pad_c.dispose();
    super.dispose();
  }

  void _play_c() {
    pad_c.play(AssetSource('foundations/c.mp3'));
    setState(() {
      pad_c_bool = !pad_c_bool;
    });
    print("Playing C");
  }

  void _stop_c() {
    pad_c.stop();
    setState(() {
      pad_c_bool = !pad_c_bool;
    });
    print("Stoping C");
  }

  void _play_c_sustenido() {
    pad_c_sustenido.play(AssetSource('foundations/c#.mp3'));
    setState(() {
      pad_c_sustenido_bool = !pad_c_sustenido_bool; // Toggle the value
    });
    print("Playing C#");
  }

  void _stop_c_sustenido() {
    pad_c_sustenido.stop();
    setState(() {
      pad_c_sustenido_bool = !pad_c_sustenido_bool; // Toggle the value
    });
    print("Stoping C#");
  }

  void _play_d() {
    pad_d.play(AssetSource('foundations/d.mp3'));
    setState(() {
      pad_d_bool = !pad_d_bool; // Toggle the value
    });
    print("Playing D");
  }

  void _stop_d() {
    pad_d.stop();
    setState(() {
      pad_d_bool = !pad_d_bool; // Toggle the value
    });
    print("Stoping D");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/logo.png'),
              margin: EdgeInsets.only(bottom: 24),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Center(
                    child: Text(
                      "C",
                      style: TextStyle(
                        fontSize: 28,
                        color: pad_c_bool == true ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                color: pad_c_bool == true
                                    ? Colors.red
                                    : Colors.white))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (pad_c_bool == true) {
                          return Colors.transparent;
                        } else {
                          // Return another color if the condition is false
                          return Colors
                              .transparent; // Or any other color you prefer
                        }
                      },
                    ),
                    elevation:
                        MaterialStateProperty.all(0), // Set elevation to 0
                    overlayColor: MaterialStateProperty.all(
                        Colors.transparent), // Remove overlay color
                    // Add other properties as needed
                  ),
                  onPressed: () {
                    if (pad_c_bool == false) {
                      _play_c();
                      if (pad_c_sustenido_bool == true) {
                        _stop_c_sustenido();
                      }
                      if (pad_d_bool == true) {
                        _stop_d();
                      }
                    } else {
                      _stop_c();
                    }
                  },
                ),
                ElevatedButton(
                  child: Center(
                    child: Text(
                      "C#",
                      style: TextStyle(
                        fontSize: 28,
                        color: pad_c_sustenido_bool == true
                            ? Colors.red
                            : Colors.white,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                color: pad_c_sustenido_bool == true
                                    ? Colors.red
                                    : Colors.white))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (pad_c_sustenido_bool == true) {
                          return Colors.transparent;
                        } else {
                          // Return another color if the condition is false
                          return Colors
                              .transparent; // Or any other color you prefer
                        }
                      },
                    ),
                    elevation:
                        MaterialStateProperty.all(0), // Set elevation to 0
                    overlayColor: MaterialStateProperty.all(
                        Colors.transparent), // Remove overlay color
                    // Add other properties as needed
                  ),
                  onPressed: () {
                    if (pad_c_sustenido_bool == false) {
                      _play_c_sustenido();
                      if (pad_c_bool == true) {
                        _stop_c();
                      }
                      if (pad_d_bool == true) {
                        _stop_d();
                      }
                    } else {
                      _stop_c_sustenido();
                    }
                  },
                ),
                ElevatedButton(
                  child: Center(
                    child: Text(
                      "D",
                      style: TextStyle(
                        fontSize: 28,
                        color: pad_d_bool == true ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                color: pad_d_bool == true
                                    ? Colors.red
                                    : Colors.white))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (pad_d_bool == true) {
                          return Colors.transparent;
                        } else {
                          // Return another color if the condition is false
                          return Colors
                              .transparent; // Or any other color you prefer
                        }
                      },
                    ),
                    elevation:
                        MaterialStateProperty.all(0), // Set elevation to 0
                    overlayColor: MaterialStateProperty.all(
                        Colors.transparent), // Remove overlay color
                    // Add other properties as needed
                  ),
                  onPressed: () {
                    if (pad_d_bool == false) {
                      _play_d();
                      if (pad_c_bool == true) {
                        _stop_c();
                      }
                      if (pad_c_sustenido_bool == true) {
                        _stop_c_sustenido();
                      }
                    } else {
                      _stop_d();
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
