import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:share_extend/share_extend.dart';

class AhohyesoAnuonyamNkaWo extends StatefulWidget {
  @override
  _AhohyesoAnuonyamNkaWoState createState() => _AhohyesoAnuonyamNkaWoState();
}

class _AhohyesoAnuonyamNkaWoState extends State<AhohyesoAnuonyamNkaWo> {
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
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                  actions: <Widget>[
                    IconButton(icon: Icon(Icons.share, size: 30.0,),
                    onPressed: (){
                      ShareExtend.share("AHOHYƐSO\n\n"
                          "Anuonyam nka Wo, O me Nyankopɔn! Mede nnaase ma wo sɛ Woada nea Ɔyɛ wo Honhom mu ahummɔbɔ asuten no ne W'adom "
                          "Apuei-Bea ne Wo Som Korabea no akyerɛ me.\n\n"

                          "Mekotow srɛ Wo wɔ Wo Din a ɛnam so ama wɔn a wɔbɛn Wo no anim ahyerɛn na ama wɔn a wɔsom Wo nokware mu no akoma tu ba Wo "
                          "nkyɛn no sɛ tebea ne biribiara mu no boa me na matumi asɔ W'ahama no mu na mate me ho afi obiara ho gye Wo nkutoo ho, na mede "
                          "m'ani akyerɛ nea W'Adiyisɛm fi no so na matumi ayɛ nea Woahyɛ me sɛ menyɛ wɔ Wo kyɛrɛwsɛm no mu ara pɛ.\n\n"

                          "O m'Awurade fa W'adom ne wo dɔ ayamye no ho adurade hyɛ me mu ade ne me nipadua nyinaa. "
                          "Afei nso, bɔ me ho ban fi W'akyiwade nyinaa ho, na dom boa me ne  me nuanom na yɛatumi ayɛ osetie ama Wo, "
                          "na yɛapo biribiara a ɛbɛtumi akanyan bɔne ne akɔnnɔbɔne wɔ me mu.\n\n"
                          "Nokware ni, Wo ne nipa nyinaa Awurade, na Wo na wiase yi ne nea ɛdi akyi no yɛ Wo dea. Nyame foforo biara "
                          "nni hɔ ka Wo Ho, Ohintahu, Nyansaboakwa.\n\n"
                          "Bahá'u'lláh\n\n\n"
                          "Onyame Nkae app",


                          "text", sharePanelTitle: "Ahohyɛso", subject: "Twi Prayers",);
                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Ahohyɛso", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Ahohyeso1_Anuonyam_nka_Wo.mp3"));
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

                                  child: DropCapText("Anuonyam nka Wo, O me Nyankopɔn! Mede nnaase ma wo sɛ Woada nea Ɔyɛ wo Honhom mu ahummɔbɔ asuten no ne W'adom "
                                      "Apuei-Bea ne Wo Som Korabea no akyerɛ me.",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),

                                    indentation: Offset (0.0, 0.0),
                                    style: TextStyle(fontSize:  (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Mekotow srɛ Wo wɔ Wo Din a ɛnam so ama wɔn a wɔbɛn Wo no anim ahyerɛn na ama wɔn a wɔsom Wo nokware mu no akoma tu ba Wo "
                            "nkyɛn no sɛ tebea ne biribiara mu no boa me na matumi asɔ W'ahama no mu na mate me ho afi obiara ho gye Wo nkutoo ho, na mede "
                                      "m'ani akyerɛ nea W'Adiyisɛm fi no so na matumi ayɛ nea Woahyɛ me sɛ menyɛ wɔ Wo kyɛrɛwsɛm no mu ara pɛ.",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start, ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("O m'Awurade fa W'adom ne wo dɔ ayamye no ho adurade hyɛ me mu ade ne me nipadua nyinaa. "
                            "Afei nso, bɔ me ho ban fi W'akyiwade nyinaa ho, na dom boa me ne  me nuanom na yɛatumi ayɛ osetie ama Wo, "
                                      "na yɛapo biribiara a ɛbɛtumi akanyan bɔne ne akɔnnɔbɔne wɔ me mu.",
                                    style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Nokware ni, Wo ne nipa nyinaa Awurade, na Wo na wiase yi ne nea ɛdi akyi no yɛ Wo dea. Nyame foforo biara "
                                      "nni hɔ ka Wo Ho, Ohintahu, Nyansaboakwa.",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start, ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),


                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
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