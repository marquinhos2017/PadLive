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

  final pad_a = AudioPlayer();
  bool pad_a_bool = false;

  final pad_bb = AudioPlayer();
  bool pad_bb_bool = false;

  final pad_b = AudioPlayer();
  bool pad_b_bool = false;

  @override
  void dispose() {
    pad_c.dispose();
    super.dispose();
  }

  void _play_c() {
    setState(() {
      pad_c_bool = !pad_c_bool;
    });
    pad_c.setVolume(0);
    pad_c.play(AssetSource('foundations/c.mp3'));
    for (double i = 0; i <= 1; i = i + 0.0002) {
      pad_c.setVolume(i);
      //print(i);
    }

    print("Playing C");
  }

  void _stop_c() {
    setState(() {
      pad_c_bool = !pad_c_bool;
    });
    for (double i = 1; i >= 0; i = i - 0.0001) {
      pad_c.setVolume(i);
      // print(i);
    }
    pad_c.stop();

    print("Stoping C");
  }

  void _play_c_sustenido() {
    setState(() {
      pad_c_sustenido_bool = !pad_c_sustenido_bool;
    });
    pad_c_sustenido.setVolume(0);
    pad_c_sustenido.play(AssetSource('foundations/c#.mp3'));
    for (double i = 0; i <= 1; i = i + 0.0005) {
      pad_c_sustenido.setVolume(i);
      //print(i);
    }
  }

  void _stop_c_sustenido() {
    setState(() {
      pad_c_sustenido_bool = !pad_c_sustenido_bool;
    });
    for (double i = 1; i >= 0; i = i - 0.0001) {
      pad_c_sustenido.setVolume(i);
      // print(i);
    }
    pad_c_sustenido.stop();

    print("Stoping C#");
  }

  void _play_d() {
    setState(() {
      pad_d_bool = !pad_d_bool;
    });
    pad_d.setVolume(0);
    pad_d.play(AssetSource('foundations/d.mp3'));
    for (double i = 0; i <= 1; i = i + 0.0005) {
      pad_d.setVolume(i);
      //print(i);
    }

    print("Playing C");
  }

  void _stop_d() {
    setState(() {
      pad_d_bool = !pad_d_bool;
    });
    for (double i = 1; i >= 0; i = i - 0.0002) {
      pad_d.setVolume(i);
      // print(i);
    }
    pad_d.stop();
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

  void _play_a() {
    pad_a.play(AssetSource('foundations/a.mp3'));
    setState(() {
      pad_a_bool = !pad_a_bool; // Toggle the value
    });
    print("Playing A");
  }

  void _stop_a() {
    pad_a.stop();
    setState(() {
      pad_a_bool = !pad_a_bool; // Toggle the value
    });
    print("Stoping A");
  }

  void _play_bb() {
    pad_bb.play(AssetSource('foundations/bb.mp3'));
    setState(() {
      pad_bb_bool = !pad_bb_bool; // Toggle the value
    });
    print("Playing A");
  }

  void _stop_bb() {
    pad_bb.stop();
    setState(() {
      pad_bb_bool = !pad_bb_bool; // Toggle the value
    });
    print("Stoping A");
  }

  void _play_b() {
    pad_b.play(AssetSource('foundations/b.mp3'));
    setState(() {
      pad_b_bool = !pad_b_bool; // Toggle the value
    });
    print("Playing A");
  }

  void _stop_b() {
    pad_b.stop();
    setState(() {
      pad_b_bool = !pad_b_bool; // Toggle the value
    });
    print("Stoping A");
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
              margin: EdgeInsets.only(bottom: 24, top: 124),
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
                      splashFactory: NoSplash.splashFactory,
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
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
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
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
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
                      splashFactory: NoSplash.splashFactory,
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
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
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
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
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
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
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
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
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
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
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
                        if (pad_e_bool == true) {
                          _stop_e();
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
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
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
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
                        }
                      } else {
                        _stop_ab();
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
                        "A",
                        style: TextStyle(
                          fontSize: 28,
                          color: pad_a_bool == true ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: pad_a_bool == true
                                      ? Colors.red
                                      : Colors.white))),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (pad_a_bool == true) {
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
                      if (pad_a_bool == false) {
                        _play_a();
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
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
                        }
                      } else {
                        _stop_a();
                      }
                    },
                  ),
                  ElevatedButton(
                    child: Center(
                      child: Text(
                        "Bb",
                        style: TextStyle(
                          fontSize: 28,
                          color:
                              pad_bb_bool == true ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: pad_bb_bool == true
                                      ? Colors.red
                                      : Colors.white))),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (pad_bb_bool == true) {
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
                      if (pad_bb_bool == false) {
                        _play_bb();
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
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
                        }
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_b_bool == true) {
                          _stop_b();
                        }
                      } else {
                        _stop_bb();
                      }
                    },
                  ),
                  ElevatedButton(
                    child: Center(
                      child: Text(
                        "B",
                        style: TextStyle(
                          fontSize: 28,
                          color: pad_b_bool == true ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(90, 90)),

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: pad_b_bool == true
                                      ? Colors.red
                                      : Colors.white))),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (pad_b_bool == true) {
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
                      if (pad_b_bool == false) {
                        _play_b();
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
                        if (pad_gb_bool == true) {
                          _stop_gb();
                        }
                        if (pad_g_bool == true) {
                          _stop_g();
                        }
                        if (pad_ab_bool == true) {
                          _stop_ab();
                        }
                        if (pad_a_bool == true) {
                          _stop_a();
                        }
                        if (pad_bb_bool == true) {
                          _stop_bb();
                          if (pad_gb_bool == true) {
                            _stop_gb();
                          }
                        }
                      } else {
                        _stop_b();
                      }
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white))),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Colors.transparent;
                    },
                  ),
                ),
                onPressed: () {
                  setState(() {
                    pad_d_bool = false;
                    pad_c_bool = false;
                    pad_c_sustenido_bool = false;
                  });
                  for (double i = 1; i >= 0; i = i - 0.0001) {
                    pad_c.setVolume(i);
                    pad_c_sustenido.setVolume(i);
                    pad_d.setVolume(i);

                    // print(i);
                  }
                  pad_c.stop();
                  pad_c_sustenido.stop();
                  pad_d.stop();
                },
                child: Text(
                  "END",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
