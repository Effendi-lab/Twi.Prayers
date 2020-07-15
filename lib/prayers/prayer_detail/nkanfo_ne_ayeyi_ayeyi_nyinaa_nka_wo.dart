import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class NkanfoNeAyeyiAyeyiNyinaaNkaWo extends StatefulWidget {
  @override
  _NkanfoNeAyeyiAyeyiNyinaaNkaWoState createState() => _NkanfoNeAyeyiAyeyiNyinaaNkaWoState();
}

class _NkanfoNeAyeyiAyeyiNyinaaNkaWoState extends State<NkanfoNeAyeyiAyeyiNyinaaNkaWo> {
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
                      icon: Icon(Icons.share, size: 30.0), onPressed: (){
                        ShareExtend.share("NKANFO NE AYEYI\n\n"
                            "Ayeyi nyinaa nka Wo, O me Nyankopɔn! Wo a Woyɛ anuonyam ne ahenni, kɛseyɛ ne nnidi "
                            "nyinaa farebae, "
                            "Tumi ne asase wura, Wo a Wo korɔn na Woyɛ Ɔdomfo, anwonwade ne ahoɔden. Nea Wopɛ n'asɛem no Woma no twiw "
                            "bɛn Wo Po Kɛse no ho, na nea Wopɛ no nso Wodom no ma ohu Wo Din a ɛfi tete nteredee no. Obiara nni ɔsoro "
                            "anaa asase so a obɛtumi asiw W'ahenni Nhehyɛe ho kwan. Ɛfi adebɔ mfiase Wo na Wodi hene wɔ abɔde nyinaa so, "
                            "na Wobɛkɔ so adi hene wɔ abɔde nyinaa so daa. Onyame foforo biara nni hɔ ka Wo ho. Wo ne Otumfo no, Wo na "
                            "Wo korɔn, Wo na tumi nyinaa yɛ Wo dea. Nyansa nyinaa Wura.\n\n"

                            "O Awurade, ma Wo nkoa anim nhyerɛn sɛnea ɛbɛyɛ a wɔbɛhu Wo. Tew wɔn akoma mu, sɛnea wɔbɛtwa "
                            "wɔn ani ahwɛ Wo soro akyɛde no na wɔagye Wo Somafo a ɔreda Wo ho nsɛnkyerɛnne ne Wo su Nnɛ Da foforo "
                            "yi ato mu no adi.\n\n"

                            "Nokware, Wo ne wiase nyinaa Wura. Onyame foforo bi nni hɔ ka Wo ho, Wo a obi nhyɛ Wo na "
                            "Wodi W'ankasa Wo ho so.\n\n"
                            "Bahá'u'lláh\n\n\n"
                            "Onyame Nkae app", "text", sharePanelTitle: "Nkanfo Ne Ayeyi", subject: "Twi Prayers");
                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Nkanfo Ne Ayeyi", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/NkanfoNeAyeyi2_Ayeyi_nka_Wo.mp3"));
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

                                  child: DropCapText("Ayeyi nyinaa nka Wo, O me Nyankopɔn! Wo a Woyɛ anuonyam ne ahenni, kɛseyɛ ne nnidi "
                                      "nyinaa farebae, "
                        "Tumi ne asase wura, Wo a Wo korɔn na Woyɛ Ɔdomfo, anwonwade ne ahoɔden. Nea Wopɛ n'asɛem no Woma no twiw "
                        "bɛn Wo Po Kɛse no ho, na nea Wopɛ no nso Wodom no ma ohu Wo Din a ɛfi tete nteredee no. Obiara nni ɔsoro "
                        "anaa asase so a obɛtumi asiw W'ahenni Nhehyɛe ho kwan. Ɛfi adebɔ mfiase Wo na Wodi hene wɔ abɔde nyinaa so, "
                            "na Wobɛkɔ so adi hene wɔ abɔde nyinaa so daa. Onyame foforo biara nni hɔ ka Wo ho. Wo ne Otumfo no, Wo na "
                                      "Wo korɔn, Wo na tumi nyinaa yɛ Wo dea. Nyansa nyinaa Wura.\n\n"

                                      "O Awurade, ma Wo nkoa anim nhyerɛn sɛnea ɛbɛyɛ a wɔbɛhu Wo. Tew wɔn akoma mu, sɛnea wɔbɛtwa "
                                  "wɔn ani ahwɛ Wo soro akyɛde no na wɔagye Wo Somafo a ɔreda Wo ho nsɛnkyerɛnne ne Wo su Nnɛ Da foforo "
                                  "yi ato mu no adi.\n\n"

                                      "Nokware, Wo ne wiase nyinaa Wura. Onyame foforo bi nni hɔ ka Wo ho, Wo a obi nhyɛ Wo na "
                                      "Wodi W'ankasa Wo ho so.",
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
                                    child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize:  (20*_scale).clamp(12.0, 50.0),
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