import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class AhopakyiOAwurade extends StatefulWidget {
  @override
  _AhopakyiOAwuradeState createState() => _AhopakyiOAwuradeState();
}

class _AhopakyiOAwuradeState extends State<AhopakyiOAwurade> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  double _prevScale;
  double _scale;

  @override
  void initState() {
    super.initState();
    _prevScale = _scale = 1.0;
  }

  @override
  void dispose(){
    super.dispose();
    _assetsAudioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() {
            _scale = (_prevScale * (details.scale));
          });
        },
        onScaleEnd: (ScaleEndDetails details) {
          setState(() {
            _prevScale = _scale;
          });
        },
        child: SafeArea(
            child: Scaffold(
              appBar: PreferredSize(preferredSize: Size.fromHeight(50.0),
                child: GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,),
                      onPressed: (){
                        ShareExtend.share("AHOPAKYI\n\n"
                            "O Awurade! Wo ne me guankɔbea, na mede me koma ato hɔ rehwɛ Wo nsenkyerɛnne kwan.\n\n"
                            "O Awurade! Sɛ menam akwantu mu, anaa ofie, anaa nso m'adwuma mu mpo a, mede me ho nyinaa to Wo so. "
                            "Ma me Wo mmoa a ɛnsa da no bi na matumi apaw me ho afi nneɛma nyinaa ho; O Wo a Wo yɛ adom nyinaa wura. "
                            "Ma emfi Wo pɛ mu na me nsa nka m'afa mu de, boa me na m'ani nsɔ nea ɛnam W'ahummɔbɔ so Wode ama me no.\n\n"
                            "Wo ne tumi nyinaa Wura, Opumpuni a Woka sɛ empun a epun (ɛnyɛ hɔ a, ɛyɛ hɔ).\n\n"
                            "Báb\n\n\n"
                            "Onyame Nkae app", "text", sharePanelTitle: "Ahopakyi", subject: "Twi Prayers");
                      },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Ahopakyi", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Ahopakyi1_O_Awurade.mp3"));
                          _assetsAudioPlayer.play();
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: ()
                      {
                        _assetsAudioPlayer.stop();
                      },)
                    ],
                    centerTitle: true,


                  ),
                ),
                body: ListView(
                  children: <Widget>[
                    Card(
                      elevation: 3,
                      margin: EdgeInsets.all(11),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(

                          children: <Widget>[


                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: DropCapText("OAwurade! Wo ne me guankɔbea, na mede me koma ato hɔ rehwɛ Wo nsenkyerɛnne kwan.\n\n"
                                      "O Awurade! Sɛ menam akwantu mu, anaa ofie, anaa nso m'adwuma mu mpo a, mede me ho nyinaa to Wo so. "
                                      "Ma me Wo mmoa a ɛnsa da no bi na matumi apaw me ho afi nneɛma nyinaa ho; O Wo a Wo yɛ adom nyinaa wura. "
                                      "Ma emfi Wo pɛ mu na me nsa nka m'afa mu de, boa me na m'ani nsɔ nea ɛnam W'ahummɔbɔ so Wode ama me no.\n\n"
                                      "Wo ne tumi nyinaa Wura, Opumpuni a Woka sɛ empun a epun (ɛnyɛ hɔ a, ɛyɛ hɔ).",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),


                                    indentation: Offset(0.0, 0.0),
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                        fontFamily: "NotoSans", height: 1.40),
                                  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),




                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("Báb", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                        fontWeight: FontWeight.bold, fontFamily: "NotoSans"),
                                      textAlign: TextAlign.end, maxLines: 1,),
                                  ),
                                ),
                              ],
                            )




                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}