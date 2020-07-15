import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class AdasammaOAwurade extends StatefulWidget {
  @override
  _AdasammaOAwuradeState createState() => _AdasammaOAwuradeState();
}

class _AdasammaOAwuradeState extends State<AdasammaOAwurade> {
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
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,),
                      onPressed: (){
                        ShareExtend.share("ADASAMMA (Wiase Nipa)\n\n"
                            "O Awurade a wowɔ tema, Wo a Wo nsam ye na wo tumi yɛ! Yɛyɛ Wo nkoa a yɛhyɛ W'adom ase. Fa W'ayamye aniwa no hwɛ yɛn. "
                            "Bue yɛn ani, yɛnyɛ osetie, na ma yɛnya ntease, ne ɔdɔ sononko wɔ yɛn koma mu. Ma yɛn akra anigye ne ahosan, Wo nsɛmpa no "
                            "nti. O Awurade, kyerɛ yɛn W'ahemmam no mu kwan na ma Wo Honhom Kronkron mframa no nkanyan yɛn nyinaa. Ma yɛn daa nkwa ne "
                            "nuonyam a enni awiei. Ka nnipa nyinaa bɔ mu na ma Wo hann no nhyerɛn wɔ adasamma so. Boa yɛn na yɛmfa Wo kwan no so, na "
                            "yɛnhwehwɛ nea ɛsɔ W'ani ne W'ahemman no mu ahintasɛm. O Onyame, ma yɛn nyɛ baako na ma ayɔnkofa nkɔnsɔnkɔnsɔn no nka yɛn akoma mmom.\n\n"
                            "Nokware, Wo ne Ɔkyɛade no, Wo ne Ɔyamyefo no, na Wo ne Ɔkɛse no.\n\n"
                            "'Abdu'l-Bahá\n\n\n"
                            "Onyame Nkae app",
                            "text", sharePanelTitle: "Adasamma", subject: "Twi Prayers" );

                      },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Adasamma", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Adasama1_O_Awurade.mp3"));
                          _assetsAudioPlayer.play();
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        _assetsAudioPlayer.stop()
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

                                  child: DropCapText("OAwurade a wowɔ tema, Wo a Wo nsam ye na wo tumi yɛ! Yɛyɛ Wo nkoa a yɛhyɛ W'adom ase. Fa W'ayamye aniwa no hwɛ yɛn. "
                            "Bue yɛn ani, yɛnyɛ osetie, na ma yɛnya ntease, ne ɔdɔ sononko wɔ yɛn koma mu. Ma yɛn akra anigye ne ahosan, Wo nsɛmpa no "
                        "nti. O Awurade, kyerɛ yɛn W'ahemmam no mu kwan na ma Wo Honhom Kronkron mframa no nkanyan yɛn nyinaa. Ma yɛn daa nkwa ne "
                        "nuonyam a enni awiei. Ka nnipa nyinaa bɔ mu na ma Wo hann no nhyerɛn wɔ adasamma so. Boa yɛn na yɛmfa Wo kwan no so, na "
                            "yɛnhwehwɛ nea ɛsɔ W'ani ne W'ahemman no mu ahintasɛm. O Onyame, ma yɛn nyɛ baako na ma ayɔnkofa nkɔnsɔnkɔnsɔn no nka yɛn akoma mmom.",
                          parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                          mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                          dropCapStyle: TextStyle(fontSize:(60*_scale).clamp(37.0, 150.0),
                            fontFamily: "NotoSerif", height: 1.0,),


                          indentation: Offset(0.0, 0.0),
                          style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                              fontFamily: "NotoSans", height: 1.40),
                                ),
                                )
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Nokware, Wo ne Ɔkyɛade no, Wo ne Ɔyamyefo no, na Wo ne Ɔkɛse no.",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
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
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
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