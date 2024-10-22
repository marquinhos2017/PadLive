import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization(null);
  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 3));
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
  // Notas naturais
  final cAudioPlayer = AudioPlayer();
  bool cAudioPlayer_bool = false;

  final dAudioPlayer = AudioPlayer();
  bool dAudioPlayer_bool = false;

  final eAudioPlayer = AudioPlayer();
  bool eAudioPlayer_bool = false;

  final fAudioPlayer = AudioPlayer();
  bool fAudioPlayer_bool = false;

  final gAudioPlayer = AudioPlayer();
  bool gAudioPlayer_bool = false;

  final aAudioPlayer = AudioPlayer();
  bool aAudioPlayer_bool = false;

  final bAudioPlayer = AudioPlayer();
  bool bAudioPlayer_bool = false;

// Notas sustenidas
  final cSustenidoAudioPlayer = AudioPlayer();
  bool cSustenidoAudioPlayer_bool = false;

  final dSustenidoAudioPlayer = AudioPlayer();
  bool dSustenidoAudioPlayer_bool = false;

  final fSustenidoAudioPlayer = AudioPlayer();
  bool fSustenidoAudioPlayer_bool = false;

  final gSustenidoAudioPlayer = AudioPlayer();
  bool gSustenidoAudioPlayer_bool = false;

  final aSustenidoAudioPlayer = AudioPlayer();
  bool aSustenidoAudioPlayer_bool = false;

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
    // Parar todos os players
    cAudioPlayer.stop();
    dAudioPlayer.stop();
    eAudioPlayer.stop();
    fAudioPlayer.stop();
    gAudioPlayer.stop();
    aAudioPlayer.stop();
    bAudioPlayer.stop();

    cSustenidoAudioPlayer.stop();
    dSustenidoAudioPlayer.stop();
    fSustenidoAudioPlayer.stop();
    gSustenidoAudioPlayer.stop();
    aSustenidoAudioPlayer.stop();

    // Liberar recursos dos players
    cAudioPlayer.dispose();
    dAudioPlayer.dispose();
    eAudioPlayer.dispose();
    fAudioPlayer.dispose();
    gAudioPlayer.dispose();
    aAudioPlayer.dispose();
    bAudioPlayer.dispose();

    cSustenidoAudioPlayer.dispose();
    dSustenidoAudioPlayer.dispose();
    fSustenidoAudioPlayer.dispose();
    gSustenidoAudioPlayer.dispose();
    aSustenidoAudioPlayer.dispose();

    // Chamar super.dispose uma única vez
    super.dispose();
  }

  Future<void> _fadeOutCurrentPad(AudioPlayer currentAudioPlayer) async {
    // Faz fade-out do áudio atual
    for (double i = currentAudioPlayer.volume; i >= 0; i -= 0.1) {
      await Future.delayed(const Duration(milliseconds: 200), () {
        setState(() {
          currentAudioPlayer.setVolume(i);
        });
        print("Diminuindo volume: ${currentAudioPlayer.volume}");
      });
    }
    currentAudioPlayer.stop();
  }

  Future<void> _fadeInNewPad(AudioPlayer newAudioPlayer) async {
    // Faz fade-in do novo áudio
    for (double i = 0; i <= 1; i += 0.1) {
      await Future.delayed(const Duration(milliseconds: 200), () {
        setState(() {
          newAudioPlayer.setVolume(i);
        });
        print("Aumentando volume: ${newAudioPlayer.volume}");
      });
    }
  }

  void _playNewPad(AudioPlayer newAudioPlayer, String audioPath) {
    // Inicia o fade-in do novo áudio

    newAudioPlayer.play(AssetSource(audioPath)); // Toca o áudio
    _fadeInNewPad(newAudioPlayer); // Aplica o fade-in
  }

  void _togglePad(String padName, AudioPlayer audioPlayer) {
    // Verificação das notas naturais e seus booleans
    if (padName == "C" && cAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      cAudioPlayer_bool = false;
    } else if (padName == "C#" && cSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      cSustenidoAudioPlayer_bool = false;
    } else if (padName == "D" && dAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      dAudioPlayer_bool = false;
    } else if (padName == "D#" && dSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      dSustenidoAudioPlayer_bool = false;
    } else if (padName == "E" && eAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      eAudioPlayer_bool = false;
    } else if (padName == "F" && fAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      fAudioPlayer_bool = false;
    } else if (padName == "F#" && fSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      fSustenidoAudioPlayer_bool = false;
    } else if (padName == "G" && gAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      gAudioPlayer_bool = false;
    } else if (padName == "G#" && gSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      gSustenidoAudioPlayer_bool = false;
    } else if (padName == "A" && aAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      aAudioPlayer_bool = false;
    } else if (padName == "A#" && aSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      aSustenidoAudioPlayer_bool = false;
    } else if (padName == "B" && bAudioPlayer_bool) {
      _fadeOutCurrentPad(audioPlayer);
      bAudioPlayer_bool = false;
    } else {
      // Se o pad não está tocando, toca o áudio normalmente com fade-in
      _handlePadPress(padName, audioPlayer);
    }
  }

  void _handlePadPress(String padName, AudioPlayer newAudioPlayer) {
    String audioPath = "";

    // Verifica qual pad está tocando e para o áudio
    if (cAudioPlayer_bool) {
      _fadeOutCurrentPad(cAudioPlayer);
      cAudioPlayer_bool = false;
    }
    if (cSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(cSustenidoAudioPlayer);
      cSustenidoAudioPlayer_bool = false;
    }
    if (dAudioPlayer_bool) {
      _fadeOutCurrentPad(dAudioPlayer);
      dAudioPlayer_bool = false;
    }
    if (dSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(dSustenidoAudioPlayer);
      dSustenidoAudioPlayer_bool = false;
    }
    if (eAudioPlayer_bool) {
      _fadeOutCurrentPad(eAudioPlayer);
      eAudioPlayer_bool = false;
    }
    if (fAudioPlayer_bool) {
      _fadeOutCurrentPad(fAudioPlayer);
      fAudioPlayer_bool = false;
    }
    if (fSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(fSustenidoAudioPlayer);
      fSustenidoAudioPlayer_bool = false;
    }
    if (gAudioPlayer_bool) {
      _fadeOutCurrentPad(gAudioPlayer);
      gAudioPlayer_bool = false;
    }
    if (gSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(gSustenidoAudioPlayer);
      gSustenidoAudioPlayer_bool = false;
    }
    if (aAudioPlayer_bool) {
      _fadeOutCurrentPad(aAudioPlayer);
      aAudioPlayer_bool = false;
    }
    if (aSustenidoAudioPlayer_bool) {
      _fadeOutCurrentPad(aSustenidoAudioPlayer);
      aSustenidoAudioPlayer_bool = false;
    }
    if (bAudioPlayer_bool) {
      _fadeOutCurrentPad(bAudioPlayer);
      bAudioPlayer_bool = false;
    }

    // Define o caminho do áudio correspondente ao pad clicado
    if (padName == "C") {
      audioPath = "foundations/c.mp3"; // Caminho do áudio para o pad C
      cAudioPlayer_bool = true;
    } else if (padName == "C#") {
      audioPath = "foundations/c#.mp3"; // Caminho do áudio para o pad C#
      cSustenidoAudioPlayer_bool = true;
    } else if (padName == "D") {
      audioPath = "foundations/d.mp3"; // Caminho do áudio para o pad D
      dAudioPlayer_bool = true;
    } else if (padName == "D#") {
      audioPath = "foundations/d#.mp3"; // Caminho do áudio para o pad D#
      dSustenidoAudioPlayer_bool = true;
    } else if (padName == "E") {
      audioPath = "foundations/e.mp3"; // Caminho do áudio para o pad E
      eAudioPlayer_bool = true;
    } else if (padName == "F") {
      audioPath = "foundations/f.mp3"; // Caminho do áudio para o pad F
      fAudioPlayer_bool = true;
    } else if (padName == "F#") {
      audioPath = "foundations/f#.mp3"; // Caminho do áudio para o pad F#
      fSustenidoAudioPlayer_bool = true;
    } else if (padName == "G") {
      audioPath = "foundations/g.mp3"; // Caminho do áudio para o pad G
      gAudioPlayer_bool = true;
    } else if (padName == "G#") {
      audioPath = "foundations/g#.mp3"; // Caminho do áudio para o pad G#
      gSustenidoAudioPlayer_bool = true;
    } else if (padName == "A") {
      audioPath = "foundations/a.mp3"; // Caminho do áudio para o pad A
      aAudioPlayer_bool = true;
    } else if (padName == "A#") {
      audioPath = "foundations/a#.mp3"; // Caminho do áudio para o pad A#
      aSustenidoAudioPlayer_bool = true;
    } else if (padName == "B") {
      audioPath = "foundations/b.mp3"; // Caminho do áudio para o pad B
      bAudioPlayer_bool = true;
    }

    // Toca o novo pad com o áudio correspondente
    _playNewPad(newAudioPlayer, audioPath);
  }

  Future<void> _playing_c(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i <= 1; i += 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Aumentando C Pad ${audioplayer.volume}");
      });
      if (pad_c_bool == false) {
        break;
      }
    }
  }

  Future<void> _stoping_c(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i >= 0; i -= 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Diminuindo Pad C ${audioplayer.volume}");
      });
    }
    print("C Parado");
    audioplayer.stop();
  }

  Future<void> _playing_c_sus(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i <= 1; i += 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print(audioplayer.volume);
      });
      if (pad_c_sustenido_bool == false) {
        break;
      }
    }
  }

  Future<void> _stoping_c_sus(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i >= 0; i -= 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Parando C sustenido");
        print(audioplayer.volume);
      });
    }

    audioplayer.stop();
  }

  Future<void> _playing_d(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i <= 1; i += 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Aumentando D Pad ${audioplayer.volume}");
      });
      if (pad_d_bool == false) {
        break;
      }
    }
  }

  Future<void> _stoping_d(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i >= 0; i -= 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Diminuindo Pad D ${audioplayer.volume}");
      });
    }

    audioplayer.stop();
  }

  Future<void> _playing_d_sus(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i <= 1; i += 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Aumentando D Sustenido Pad ${audioplayer.volume}");
      });
      if (pad_eb_bool == false) {
        break;
      }
    }
  }

  Future<void> _stoping_d_sus(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i >= 0; i -= 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Diminuindo Pad D Sustenido ${audioplayer.volume}");
      });
    }

    audioplayer.stop();
  }

  void _play_c() {
    setState(() {
      pad_c_bool = !pad_c_bool;
    });
    pad_c.setVolume(0);
    pad_c.play(AssetSource('foundations/c.mp3'));
    _playing_c(pad_c);

    print("Playing C");
  }

  void _stop_c() {
    setState(() {
      pad_c_bool = !pad_c_bool;
    });
    _stoping_c(pad_c);

    print("Stoping C");
  }

  void _play_c_sustenido() {
    setState(() {
      pad_c_sustenido_bool = !pad_c_sustenido_bool;
    });
    pad_c_sustenido.setVolume(0);
    pad_c_sustenido.play(AssetSource('foundations/c#.mp3'));
    _playing_c_sus(pad_c_sustenido);
  }

  void _stop_c_sustenido() {
    setState(() {
      pad_c_sustenido_bool = !pad_c_sustenido_bool;
    });
    _stoping_c_sus(pad_c_sustenido);

    print("Stoping C#");
  }

  void _play_d() {
    setState(() {
      pad_d_bool = !pad_d_bool;
    });
    pad_d.setVolume(0);
    pad_d.play(AssetSource('foundations/d.mp3'));
    _playing_d(pad_d);

    print("Playing D");
  }

  void _stop_d() {
    setState(() {
      pad_d_bool = !pad_d_bool;
    });
    _stoping_d(pad_d);
    print("Stoping D");
  }

  void _play_eb() {
    setState(() {
      pad_eb_bool = !pad_eb_bool;
    });
    pad_eb.setVolume(0);
    pad_eb.play(AssetSource('foundations/eb.mp3'));
    _playing_d_sus(pad_eb);
  }

  void _stop_eb() {
    setState(() {
      pad_eb_bool = !pad_eb_bool;
    });
    _stoping_d_sus(pad_eb);

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                            color: cAudioPlayer_bool == true
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        splashFactory: NoSplash.splashFactory,
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: cAudioPlayer_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
                            if (cAudioPlayer_bool == true) {
                              return Colors.transparent;
                            } else {
                              // Return another color if the condition is false
                              return Colors
                                  .transparent; // Or any other color you prefer
                            }
                          },
                        ),
                        elevation:
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
                            Colors.transparent), // Remove overlay color
                        // Add other properties as needed
                      ),
                      onPressed: () {
                        _togglePad("C",
                            cAudioPlayer); // cAudioPlayer é o player associado ao pad C
                      },
                    ),
                    ElevatedButton(
                      child: Center(
                        child: Text(
                          "C#",
                          style: TextStyle(
                            fontSize: 28,
                            color: cSustenidoAudioPlayer_bool == true
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: cSustenidoAudioPlayer_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
                            if (cSustenidoAudioPlayer_bool == true) {
                              return Colors.transparent;
                            } else {
                              // Return another color if the condition is false
                              return Colors
                                  .transparent; // Or any other color you prefer
                            }
                          },
                        ),
                        elevation:
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
                            Colors.transparent), // Remove overlay color
                        // Add other properties as needed
                      ),
                      onPressed: () {
                        _togglePad("C#",
                            cSustenidoAudioPlayer); // cAudioPlayer é o player associado ao pad C
                      },
                    ),
                    ElevatedButton(
                      child: Center(
                        child: Text(
                          "D",
                          style: TextStyle(
                            fontSize: 28,
                            color: dAudioPlayer_bool == true
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        splashFactory: NoSplash.splashFactory,
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: dAudioPlayer_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
                            if (dAudioPlayer_bool == true) {
                              return Colors.transparent;
                            } else {
                              // Return another color if the condition is false
                              return Colors
                                  .transparent; // Or any other color you prefer
                            }
                          },
                        ),
                        elevation:
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
                            Colors.transparent), // Remove overlay color
                        // Add other properties as needed
                      ),
                      onPressed: () {
                        _togglePad("D",
                            dAudioPlayer); // dAudioPlayer é o player associado ao pad D
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
                            color: dSustenidoAudioPlayer_bool == true
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: dSustenidoAudioPlayer_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
                            if (dSustenidoAudioPlayer_bool == true) {
                              return Colors.transparent;
                            } else {
                              // Return another color if the condition is false
                              return Colors
                                  .transparent; // Or any other color you prefer
                            }
                          },
                        ),
                        elevation:
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
                            Colors.transparent), // Remove overlay color
                        // Add other properties as needed
                      ),
                      onPressed: () {
                        _togglePad("D#",
                            dSustenidoAudioPlayer); // dAudioPlayer é o player associado ao pad D
                      },
                    ),
                    ElevatedButton(
                      child: Center(
                        child: Text(
                          "E",
                          style: TextStyle(
                            fontSize: 28,
                            color:
                                pad_e_bool == true ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: pad_e_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
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
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
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
                            color:
                                pad_f_bool == true ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: pad_f_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
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
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
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
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: pad_gb_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
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
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
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
                            color:
                                pad_g_bool == true ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: pad_g_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
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
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
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
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: pad_ab_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
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
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
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
                            color:
                                pad_a_bool == true ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: pad_a_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
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
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
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
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: pad_bb_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
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
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
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
                            color:
                                pad_b_bool == true ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all<Size>(Size(90, 90)),

                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                    color: pad_b_bool == true
                                        ? Colors.red
                                        : Colors.white))),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
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
                            WidgetStateProperty.all(0), // Set elevation to 0
                        overlayColor: WidgetStateProperty.all(
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
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white))),
                    backgroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
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
                    _stoping_c(pad_c);
                    _stoping_c(pad_c_sustenido);
                    _stoping_d(pad_d);
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
      ),
    );
  }
}
