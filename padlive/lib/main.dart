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

  final pad_eb = AudioPlayer();
  bool pad_eb_bool = false;

  final pad_e = AudioPlayer();
  bool pad_e_bool = false;

  final pad_f = AudioPlayer();
  bool pad_f_bool = false;

  final pad_gb = AudioPlayer();
  bool pad_gb_bool = false;

  final pad_g = AudioPlayer();
  bool pad_g_bool = false;

  final pad_ab = AudioPlayer();
  bool pad_ab_bool = false;

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

  void _play_eb() {
    pad_eb.play(AssetSource('foundations/eb.mp3'));
    setState(() {
      pad_eb_bool = !pad_eb_bool; // Toggle the value
    });
    print("Playing Eb");
  }

  void _stop_eb() {
    pad_eb.stop();
    setState(() {
      pad_eb_bool = !pad_eb_bool; // Toggle the value
    });
    print("Stoping Eb");
  }

  void _play_e() {
    pad_e.play(AssetSource('foundations/e.mp3'));
    setState(() {
      pad_e_bool = !pad_e_bool; // Toggle the value
    });
    print("Playing E");
  }

  void _stop_e() {
    pad_e.stop();
    setState(() {
      pad_e_bool = !pad_e_bool; // Toggle the value
    });
    print("Stoping E");
  }

  void _play_f() {
    pad_f.play(AssetSource('foundations/f.mp3'));
    setState(() {
      pad_f_bool = !pad_f_bool; // Toggle the value
    });
    print("Playing F");
  }

  void _stop_f() {
    pad_f.stop();
    setState(() {
      pad_f_bool = !pad_f_bool; // Toggle the value
    });
    print("Stoping F");
  }

  void _play_gb() {
    pad_gb.play(AssetSource('foundations/gb.mp3'));
    setState(() {
      pad_gb_bool = !pad_gb_bool; // Toggle the value
    });
    print("Playing Gb");
  }

  void _stop_gb() {
    pad_gb.stop();
    setState(() {
      pad_gb_bool = !pad_gb_bool; // Toggle the value
    });
    print("Stoping Gb");
  }

  void _play_g() {
    pad_g.play(AssetSource('foundations/g.mp3'));
    setState(() {
      pad_g_bool = !pad_g_bool; // Toggle the value
    });
    print("Playing Gb");
  }

  void _stop_g() {
    pad_g.stop();
    setState(() {
      pad_g_bool = !pad_g_bool; // Toggle the value
    });
    print("Stoping Gb");
  }

  void _play_ab() {
    pad_ab.play(AssetSource('foundations/ab.mp3'));
    setState(() {
      pad_ab_bool = !pad_ab_bool; // Toggle the value
    });
    print("Playing Gb");
  }

  void _stop_ab() {
    pad_ab.stop();
    setState(() {
      pad_ab_bool = !pad_ab_bool; // Toggle the value
    });
    print("Stoping Gb");
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
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
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
                        if (pad_eb_bool == true) {
                          _stop_eb();
                        }
                        if (pad_e_bool == true) {
                          _stop_e();
                        }
                        if (pad_f_bool == true) {
                          _stop_f();
                        }
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
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
                        if (pad_eb_bool == true) {
                          _stop_eb();
                        }
                        if (pad_e_bool == true) {
                          _stop_e();
                        }
                        if (pad_f_bool == true) {
                          _stop_f();
                        }
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
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
                        if (pad_eb_bool == true) {
                          _stop_eb();
                        }
                        if (pad_e_bool == true) {
                          _stop_e();
                        }
                        if (pad_f_bool == true) {
                          _stop_f();
                        }
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
                        }
                      } else {
                        _stop_d();
                      }
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Center(
                      child: Text(
                        "Eb",
                        style: TextStyle(
                          fontSize: 28,
                          color:
                              pad_eb_bool == true ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: pad_eb_bool == true
                                      ? Colors.red
                                      : Colors.white))),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (pad_eb_bool == true) {
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
                      if (pad_eb_bool == false) {
                        _play_eb();
                        if (pad_c_bool == true) {
                          _stop_c();
                          print('as');
                        }
                        if (pad_c_sustenido_bool == true) {
                          _stop_c_sustenido();
                        }
                        if (pad_d_bool == true) {
                          _stop_d();
                        }
                        if (pad_e_bool == true) {
                          _stop_e();
                        }
                        if (pad_f_bool == true) {
                          _stop_f();
                        }
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
                        }
                      } else {
                        _stop_eb();
                      }
                    },
                  ),
                  ElevatedButton(
                    child: Center(
                      child: Text(
                        "E",
                        style: TextStyle(
                          fontSize: 28,
                          color: pad_e_bool == true ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: pad_e_bool == true
                                      ? Colors.red
                                      : Colors.white))),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (pad_e_bool == true) {
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
                      if (pad_e_bool == false) {
                        _play_e();
                        if (pad_c_bool == true) {
                          _stop_c();
                        }
                        if (pad_c_sustenido_bool == true) {
                          _stop_c_sustenido();
                        }
                        if (pad_d_bool == true) {
                          _stop_d();
                        }
                        if (pad_eb_bool == true) {
                          _stop_eb();
                        }
                        if (pad_f_bool == true) {
                          _stop_f();
                        }
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
                        }
                      } else {
                        _stop_e();
                      }
                    },
                  ),
                  ElevatedButton(
                    child: Center(
                      child: Text(
                        "F",
                        style: TextStyle(
                          fontSize: 28,
                          color: pad_f_bool == true ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: pad_f_bool == true
                                      ? Colors.red
                                      : Colors.white))),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (pad_f_bool == true) {
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
                      if (pad_f_bool == false) {
                        _play_f();
                        if (pad_c_bool == true) {
                          _stop_c();
                        }
                        if (pad_c_sustenido_bool == true) {
                          _stop_c_sustenido();
                        }
                        if (pad_d_bool == true) {
                          _stop_d();
                        }
                        if (pad_eb_bool == true) {
                          _stop_eb();
                        }
                        if (pad_e_bool == true) {
                          _stop_e();
                        }
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
                        }
                      } else {
                        _stop_f();
                      }
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Center(
                      child: Text(
                        "Gb",
                        style: TextStyle(
                          fontSize: 28,
                          color:
                              pad_gb_bool == true ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: pad_gb_bool == true
                                      ? Colors.red
                                      : Colors.white))),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (pad_gb_bool == true) {
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
                      if (pad_gb_bool == false) {
                        _play_gb();
                        if (pad_c_bool == true) {
                          _stop_c();
                        }
                        if (pad_c_sustenido_bool == true) {
                          _stop_c_sustenido();
                        }
                        if (pad_d_bool == true) {
                          _stop_d();
                        }
                        if (pad_eb_bool == true) {
                          _stop_eb();
                        }
                        if (pad_e_bool == true) {
                          _stop_e();
                        }
                        if (pad_f_bool == true) {
                          _stop_f();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
                        }
                      } else {
                        _stop_gb();
                      }
                    },
                  ),
                  ElevatedButton(
                    child: Center(
                      child: Text(
                        "G",
                        style: TextStyle(
                          fontSize: 28,
                          color: pad_g_bool == true ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: pad_g_bool == true
                                      ? Colors.red
                                      : Colors.white))),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (pad_g_bool == true) {
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
                      if (pad_g_bool == false) {
                        _play_g();
                        if (pad_c_bool == true) {
                          _stop_c();
                        }
                        if (pad_c_sustenido_bool == true) {
                          _stop_c_sustenido();
                        }
                        if (pad_d_bool == true) {
                          _stop_d();
                        }
                        if (pad_eb_bool == true) {
                          _stop_eb();
                        }
                        if (pad_f_bool == true) {
                          _stop_f();
                        }
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
                        }
                      } else {
                        _stop_g();
                      }
                    },
                  ),
                  ElevatedButton(
                    child: Center(
                      child: Text(
                        "Ab",
                        style: TextStyle(
                          fontSize: 28,
                          color:
                              pad_ab_bool == true ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: pad_ab_bool == true
                                      ? Colors.red
                                      : Colors.white))),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (pad_ab_bool == true) {
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
                      if (pad_ab_bool == false) {
                        _play_ab();
                        if (pad_c_bool == true) {
                          _stop_c();
                        }
                        if (pad_c_sustenido_bool == true) {
                          _stop_c_sustenido();
                        }
                        if (pad_d_bool == true) {
                          _stop_d();
                        }
                        if (pad_eb_bool == true) {
                          _stop_eb();
                        }
                        if (pad_e_bool == true) {
                          _stop_e();
                        }
                        if (pad_f_bool == true) {
                          _stop_f();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                      } else {
                        _stop_ab();
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
