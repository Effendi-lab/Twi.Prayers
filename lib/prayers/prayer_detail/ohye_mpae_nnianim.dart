import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class OhyeMpaeNnianim extends StatefulWidget {
  @override
  _OhyeMpaeNnianimState createState() => _OhyeMpaeNnianimState();
}

class _OhyeMpaeNnianimState extends State<OhyeMpaeNnianim> {
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
                    style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                  actions: <Widget>[
                    IconButton(icon: Icon(Icons.share, size: 30.0,),onPressed: (){
                      ShareExtend.share("ƆHYƐ MPAE AHOROW ABIESA NO\n\n"
                          "Daa ɔhyɛ mpae no yɛ ahorow abiɛsa. Ogyedini no wɔ ho kwan sɛ ɔbɛfa emu biara a ɔpɛ. Ɛyɛ ɔhyɛ sɛ ɔbɛbɔ "
                          "mu baako da koro biara. Ɛhia sɛ odi nhyehyɛe biara a ɛka ho no nso so.\n\n"
                          "Shoghi Effendi\n\n\n"
                          "Onyame Nkae app", "text", sharePanelTitle: "Ɔhyɛ Mpae", subject: "Twi Prayers");
                    },)
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Ɔhyɛ Mpae", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/OhyeMpae_Nnianim.mp3"));
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

                                  child: AutoSizeText("ƆHYƐ MPAE AHOROW ABIESA NO",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontWeight: FontWeight.bold, fontFamily: "NotoSerif"),
                                    textAlign: TextAlign.center, ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Daa ɔhyɛ mpae no yɛ ahorow abiɛsa. Ogyedini no wɔ ho kwan sɛ ɔbɛfa emu biara a ɔpɛ. Ɛyɛ ɔhyɛ sɛ ɔbɛbɔ "
                                      "mu baako da koro biara. Ɛhia sɛ odi nhyehyɛe biara a ɛka ho no nso so.",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", fontStyle: FontStyle.italic, height: 1.40),
                                    textAlign: TextAlign.start,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),


                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("Shoghi Effendi", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans",
                                        fontWeight: FontWeight.bold),
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