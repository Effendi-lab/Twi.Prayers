import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class AkonkyeAyeyiNkaWo extends StatefulWidget {
  @override
  _AkonkyeAyeyiNkaWoState createState() => _AkonkyeAyeyiNkaWoState();
}

class _AkonkyeAyeyiNkaWoState extends State<AkonkyeAyeyiNkaWo> {
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
                      icon: Icon(Icons.share, size: 30.0,),
                      onPressed: (){
                        ShareExtend.share("AKƆNKYE\n\n"
                            "Ayeyi nka Wo, O Awurade me Nyankopɔn! Menam saa Yikyerɛ a ɛnam so nti sum adan hann, na Wɔasi "
                            "W'asɔredan a Wodi mu akɔneaba na, Woada Kyerɛwsɛm no adi na wɔabue Asɛm a wɔtrɛw mu no so kotow srɛ wo "
                            "sɛ sian nea ɛbɛtumi ama me ne wɔn a wɔka me ho na yɛatu aba sorosoro w'anuonyam a ɛboro ade nyinaa "
                            "so no mu na ɛbɛhohoro yɛn ho afi akyinnye nkekae biara a asi adwemmɔnefo kwan ma wɔntumi nhyɛn Wo koroyɛ "
                            "ntamadan no mu no gu yɛn so.\n\n"

                            "Saa bere yi mu, O m'Awurade yɛ bere a Woahyɛ ama Wo nkoa sɛ wɔnkyene kɔm. Nhyira nka nea ɛsane "
                            "Wo nti ɔde n'akoma nyinaa yɛ akɔnkye na ɔtwe ne ho fi ade nyinaa gye Wo nkutoo ho. Boa me na boa wɔn, "
                            "O m'Awurade, ma yɛnyɛ osetie na yɛnni Wo nhyehyɛe so. Nokware ni, Wowɔ tumi sɛ Woyɛ nea Wopɛ.\n\n"

                            "Onyame foforo bi nni hɔ ka Wo ho, Onimade nyinaa, Nyansa nyinaa wura. Ayeyi nyinaa nka Nyankopɔn, "
                            "wiase nyinaa Wura.\n\n"

                            "Bahá'u'lláh\n\n\n"

                            "Onyame Nkae app", "text", sharePanelTitle: "Akɔnkye", subject: "Twi Prayers");
                      },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),

                  child: GradientAppBar(title: Text("Akɔnkye", style:TextStyle(fontSize: 20, fontFamily: "NotoSerif" )),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Akonkye1_Ayeyi_nka_Wo.mp3"));
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

                                  child: DropCapText("Ayeyi nka Wo, O Awurade me Nyankopɔn! Menam saa Yikyerɛ a ɛnam so nti sum adan hann, na Wɔasi "
                        "W'asɔredan a Wodi mu akɔneaba na, Woada Kyerɛwsɛm no adi na wɔabue Asɛm a wɔtrɛw mu no so kotow srɛ wo "
                        "sɛ sian nea ɛbɛtumi ama me ne wɔn a wɔka me ho na yɛatu aba sorosoro w'anuonyam a ɛboro ade nyinaa "
                        "so no mu na ɛbɛhohoro yɛn ho afi akyinnye nkekae biara a asi adwemmɔnefo kwan ma wɔntumi nhyɛn Wo koroyɛ "
                                      "ntamadan no mu no gu yɛn so.\n\n"

                                      "O m'Awurade me ne nea Waso Wo dɔ ayamye ahama no ne W'ahummɔbɔ ne W'adom atade ano no mu. "
                                      "Hyira wiase yi ne wiase a ɛbɛba mu nnepa so ma me ne m'adɔfonom. Saa de a ma wɔn Akyɛde a Ahintaw (ahinta akyɛde No) "
                                      "a Woahyira so ama atitiriw a Woapaw wɔn wɔ Woabɔde mu no.\n\n"

                                      "Saa bere yi mu, O m'Awurade yɛ bere a Woahyɛ ama Wo nkoa sɛ wɔnkyene kɔm. Nhyira nka nea ɛsane "
                                      "Wo nti ɔde n'akoma nyinaa yɛ akɔnkye na ɔtwe ne ho fi ade nyinaa gye Wo nkutoo ho. Boa me na boa wɔn, "
                                      "O m'Awurade, ma yɛnyɛ osetie na yɛnni Wo nhyehyɛe so. Nokware ni, Wowɔ tumi sɛ Woyɛ nea Wopɛ.\n\n"

                                      "Onyame foforo bi nni hɔ ka Wo ho, Onimade nyinaa, Nyansa nyinaa wura. Ayeyi nyinaa nka Nyankopɔn, "
                                      "wiase nyinaa Wura.\n\n",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),


                                    indentation: Offset(0.0, 0.0),
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                        fontFamily: "NotoSans", height: 1.40),   ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),


                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0),  fontFamily: "NotoSans", fontWeight: FontWeight.bold),
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