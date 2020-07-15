import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';


class SohweBereOnoNeAhummobo extends StatefulWidget {
  @override
  _SohweBereOnoNeAhummoboState createState() => _SohweBereOnoNeAhummoboState();
}

class _SohweBereOnoNeAhummoboState extends State<SohweBereOnoNeAhummobo> {
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
                      icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                        ShareExtend.share("SƆHWƐ BERE \n\n"
                                "Ɔno ne Ahummɔbɔ no, Adom nyinaa Wura!\n\n"

                            "O Onyankopɔn, me Nyankopɔn! Wohu me, Wonim me. Wo ne me Werɛkyekyefo ne me Guankɔbea. "
                            "Menhwehwɛ obi, na merenhwehwɛ obi gye wo nkutoo; meremfa ɔkwan biara so, "
                            "gye Wo kwan a ɔdɔ wɔ mu no so. Sɛ esum kabii duru me anadwo sum mu mpo, Na maba mu bu a, "
                            "m'aniwa dan de anidaso mmoroso Kyerɛ W'adekyee adom a enni awiei no, Na Ahemanakye nso me kra a abotow no nya nkanyan ne ahoɔden, ɛnam W'ahoɔfɛ ne Wo pɛpɛɛpɛyɛ nkae nti. Nea W'adom ne W'ahummɔbɔ aboa no no, "
                            "sɛ ɔte sɛ nsu a ɛsosɔw ko ko ko mpo a, ɔbɛyɛ sɛ po a ɛnni awiei, anaa 'atɔm' ketewaa bi mpo a, W'ayamyedɔ a ɛsian no boa no ma ɔbɛdan nsoromma  a ɛhyerɛn shireen.\n\n"

                            "Fa W'akoa yi a woagye W'asɛm ato mu yi hyɛ Wo banbɔ ase, O Wo a Woyɛ Honhom kann, Wo a Woma ade ma ɛboro so. "
                            "Boa no wɔ Wo wiase a Woabɔ yi mu na onnyina pintinn wɔ Wo Ho dɔ mu, na ma ho kwan na anomaa a ne ntaban abubu yi nya "
                            "baabi nhyɛ wɔ wo honhom pirebuw a ɛwɔ wo daa  nkwa dua no so mu.\n\n"

                            "'Abdu'l-Bahá\n\n\n"
                            "Onyame Nkae app", "text", sharePanelTitle: "Sɔhwɛ Bere", subject: "Twi Prayers");
                    },
                    )
                  ],
                ),
              ),

              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Sɔhwɛ Bere", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/SohweBere4_Ono_ne_Ahummobo_no.mp3"));
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

                                  child: DropCapText("Ɔno ne Ahummɔbɔ no, Adom nyinaa Wura!\n",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),

                                    indentation: Offset(0.0, 0.0),
                                    style:  TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("O Onyankopɔn, me Nyankopɔn! Wohu me, Wonim me. Wo ne me Werɛkyekyefo ne me Guankɔbea. "
                                      "Menhwehwɛ obi, na merenhwehwɛ obi gye wo nkutoo; meremfa ɔkwan biara so, "
                                      "gye Wo kwan a ɔdɔ wɔ mu no so. Sɛ esum kabii duru me anadwo sum mu mpo, Na maba mu bu a, "
                                      "m'aniwa dan de anidaso mmoroso Kyerɛ W'adekyee adom a enni awiei no, Na Ahemanakye nso me kra a abotow no nya nkanyan ne ahoɔden, "
                                      "ɛnam W'ahoɔfɛ ne Wo pɛpɛɛpɛyɛ nkae nti. Nea W'adom ne W'ahummɔbɔ aboa no no, "
                                      "sɛ ɔte sɛ nsu a ɛsosɔw ko ko ko mpo a, ɔbɛyɛ sɛ po a ɛnni awiei, anaa 'atɔm' ketewaa bi mpo a, W'ayamyedɔ a ɛsian no boa no ma ɔbɛdan nsoromma  a ɛhyerɛn shireen.\n",
                                    style:  TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Fa W'akoa yi a woagye W'asɛm ato mu yi hyɛ Wo banbɔ ase, O Wo a Woyɛ Honhom kann, Wo a Woma ade ma ɛboro so. "
                                      "Boa no wɔ Wo wiase a Woabɔ yi mu na onnyina pintinn wɔ Wo Ho dɔ mu, na ma ho kwan na anomaa a ne ntaban abubu yi nya "
                                      "baabi nhyɛ wɔ wo honhom pirebuw a ɛwɔ wo daa  nkwa dua no so mu.\n\n",
                                    style:  TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,),
                                )
                              ],
                            ),




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
