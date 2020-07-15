import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class DenyeAyeyiNeAnuonyam extends StatefulWidget {
  @override
  _DenyeAyeyiNeAnuonyamState createState() => _DenyeAyeyiNeAnuonyamState();
}

class _DenyeAyeyiNeAnuonyamState extends State<DenyeAyeyiNeAnuonyam> {
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
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                        ShareExtend.share("DENYƐ\n\n"
                            "Ayeyi ne anuonyam nka Wo, O Nyankopɔn! Ma ho kwan na da a yɛbɛtwiw abɛn Wo kronkronbea no mmra ntɛm "
                            "ntɛm. Ma yɛn koma ani nnye wɔ Wo dɔ tumi ne Woanisɔ mu, ma yɛn nnyina pintinn sɛnea ɛbɛyɛ a ɛde yɛn bɛhyɛ "
                            "Wo Pɛ ne Wo Nhyehyɛe ase. Nokware, Wo nimdee bunkam ade nyinaa a Woabɔ ne nea Wobɛkɔ so abɔ na, Wo tumi "
                            "korɔn na ɛboro ade nyinaa a ɛwɔ hɔ na Wo pɛ mu ɛbɛtena hɔ.\n\n"

                            "Obi bi nni hɔ a ɛsɛ sɛ wɔsom no gye Wo nkutoo, ɔfoforo bi nni hɔ a wɔpere hwehwɛ no gye Wo, "
                            "obi nni hɔ a ɔsɛ nkamfo ka Wo ho na obi bi nni hɔ a wɔdɔ no gye nea ɛsɔ Woani.\n\n"

                            "Nokware, Wo ne Ɔhene kɛse no Nokware kann no, Ahokyere mu Boafo, "
                            "Wo a wodi woankasa Wo ho so.\n\n"
                            "'Abdu'l-Bahá\n\n\n"
                            "Onyame Nkae app", "text", sharePanelTitle: "Denyɛ", subject: "Twi Prayers");
                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar:PreferredSize(
                  preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Denyɛ", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Denye1_O_Ayeyi_ne_anuonyam.mp3"));
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

                                  child: DropCapText("Ayeyi ne anuonyam nka Wo, O Nyankopɔn! Ma ho kwan na da a yɛbɛtwiw abɛn Wo kronkronbea no mmra ntɛm "
                        "ntɛm. Ma yɛn koma ani nnye wɔ Wo dɔ tumi ne Woanisɔ mu, ma yɛn nnyina pintinn sɛnea ɛbɛyɛ a ɛde yɛn bɛhyɛ "
                        "Wo Pɛ ne Wo Nhyehyɛe ase. Nokware, Wo nimdee bunkam ade nyinaa a Woabɔ ne nea Wobɛkɔ so abɔ na, Wo tumi "
                                      "korɔn na ɛboro ade nyinaa a ɛwɔ hɔ na Wo pɛ mu ɛbɛtena hɔ.\n\n"

                                      "Obi bi nni hɔ a ɛsɛ sɛ wɔsom no gye Wo nkutoo, ɔfoforo bi nni hɔ a wɔpere hwehwɛ no gye Wo, "
                                      "obi nni hɔ a ɔsɛ nkamfo ka Wo ho na obi bi nni hɔ a wɔdɔ no gye nea ɛsɔ Woani.\n\n"

                                      "Nokware, Wo ne Ɔhene kɛse no Nokware kann no, Ahokyere mu Boafo, "
                                      "Wo a wodi woankasa Wo ho so.\n\n"
                                      ,
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
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0),
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