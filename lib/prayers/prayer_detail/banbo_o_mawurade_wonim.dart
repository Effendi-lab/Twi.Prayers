import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class BanboOMawuradeWonim extends StatefulWidget {
  @override
  _BanboOMawuradeWonimState createState() => _BanboOMawuradeWonimState();
}

class _BanboOMawuradeWonimState extends State<BanboOMawuradeWonim> {
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
              appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
                child: GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                        ShareExtend.share("BANBƆ\n\n"
                            "O m'Awurade! Wonim sɛ ɔyaw ne abɛbrɛsɛ atwa nnipa ho ahyia. Na ahokyere ne ɔhaw afa baabiara. "
                            "Sɔhwɛ biara mene nnipa na ahokyere biara ano yɛ den taataa no te sɛ nea ɔne aprammire na ɛredi asi. "
                            "Hintabea ne guankɔbea biara nni baabi gye Wo banbɔ ntaban ase, Wo kora, Wo wɛn ne Wo hwɛ ase.\n\n"

                            "O Wo a Woyɛ Ahummɔbɔ!, O m'Awurade! Ma Wo banbɔn nyɛ m'akode, ma Wo kora nyɛ m'akokyɛm, "
                            "ma ahobrɛase a ɛwɔ Wo biakoyɛ po ano nhwɛ me so, na ma Wo hwɛ ne banbɔ nyɛ me tintimman ne m'atenae. "
                            "Twe me fi m'ankasa me nsusui ne m'apɛde ho, na bɔ me ho ban fi ɔyare, sɔhwɛ, ahokyere ne tibɔne biara ho\n\n"

                            "Nokware wo ne Ɔkorafo no, Wo ne Ɔhwɛfo no, Wo ne Ɔbanbɔfo no, Wo na Woma biribiara di mu, "
                        "na nokware, Wo ne Ahummɔbɔ mu Ahummɔbɔ no.\n\n"

                            "Abdu'l-Bahá\n\n\n"

                            "Onyame Nkae app", "text", sharePanelTitle: "Banbɔ", subject: "Twi Prayers");
                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Banbɔ", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Banbo2_O_mAwurade.mp3"));
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

                                  child: DropCapText("Om'Awurade! Wonim sɛ ɔyaw ne abɛbrɛsɛ atwa nnipa ho ahyia. Na ahokyere ne ɔhaw afa baabiara. "
                        "Sɔhwɛ biara mene nnipa na ahokyere biara ano yɛ den taataa no te sɛ nea ɔne aprammire na ɛredi asi. "
                                      "Hintabea ne guankɔbea biara nni baabi gye Wo banbɔ ntaban ase, Wo kora, Wo wɛn ne Wo hwɛ ase.\n\n"

                                      "O Wo a Woyɛ Ahummɔbɔ!, O m'Awurade! Ma Wo banbɔn nyɛ m'akode, ma Wo kora nyɛ m'akokyɛm, "
                                      "ma ahobrɛase a ɛwɔ Wo biakoyɛ po ano nhwɛ me so, na ma Wo hwɛ ne banbɔ nyɛ me tintimman ne m'atenae. "
                                      "Twe me fi m'ankasa me nsusui ne m'apɛde ho, na bɔ me ho ban fi ɔyare, sɔhwɛ, ahokyere ne tibɔne biara ho\n\n"

                                      "Nokware wo ne Ɔkorafo no, Wo ne Ɔhwɛfo no, Wo ne Ɔbanbɔfo no, Wo na Woma biribiara di mu, "
                                  "na nokware, Wo ne Ahummɔbɔ mu Ahummɔbɔ no.",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),


                                    indentation: Offset(0.0, 0.0),
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                        fontFamily: "NotoSans", height: 1.40), ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),


                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans",fontWeight: FontWeight.bold),
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