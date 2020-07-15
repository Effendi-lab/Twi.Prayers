import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:share_extend/share_extend.dart';

class KununomONyankopon extends StatefulWidget {
  @override
  _KununomONyankoponState createState() => _KununomONyankoponState();
}

class _KununomONyankoponState extends State<KununomONyankopon> {
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
                        ShareExtend.share("KUNUNOM\n\n"
                            "O Nyankopɔn, me Nyankopɔn! Saa abaawa (afenaa) yi su frɛ Wo de ne ho to Wo so, dan n'ani kyerɛ Wo, "
                            "kotow srɛ wo sɛ sian Wo sorosoro adom no gu ne so, na da Wo honhon mu ahintasɛm no adi kyerɛ no, na tow Wo Nyame-ti "
                            "akanea (hann) no to ne so.\n\n"
                            "O m'Awurade! Bue me kunu aniwa ma ɔnhu ade. Ma wo ho nimdee hann no mma n'ani nnye. "
                            "Twe n'adwene kɔ Wo ahoɔfɛ a ɛhyerɛn no so, ma Wo hann a ɛda adi pefee no nkanyan ne sunsum. \n\n"

                            "O m'Awurade, yi nkatanim no fi n'anim. Tɔ W'adom nsu mmoroso no gu ne so, ma Wo ho dɔ bobesa no mmoro no "
                            "ma ɔnyɛ sɛ W'abɔfo a wɔnantew asase yi so bere a wɔn akra tu faa nenam sorosoro akyirikyiri no mu baako.\n\n"

                            "Boa no ma ne kanea nhyerɛn mma ne hyerɛn no nyɛ hann te sɛ Wo nyansa wɔ Wo nkurɔfo mu.\n\n"
                            "Nokware ni, Wo na Wosom bo, Wo na wokyɛ ade bere nyinaa, Wo a wotrɛw Wo nsam.\n\n"
                            "Bahá'u'lláh\n\n\n"
                            "Onyame NKae app", "text", sharePanelTitle: "Kununom", subject: "Twi Prayers");

                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Kununom", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () 
                        {
                          _assetsAudioPlayer.open(Audio("audios/Kununom1_O_Nyankopon.mp3"));
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

                                  child: DropCapText("ONyankopɔn, me Nyankopɔn! Saa abaawa (afenaa) yi su frɛ Wo de ne ho to Wo so, dan n'ani kyerɛ Wo, "
                            "kotow srɛ wo sɛ sian Wo sorosoro adom no gu ne so, na da Wo honhon mu ahintasɛm no adi kyerɛ no, na tow Wo Nyame-ti "
                                      "akanea (hann) no to ne so.\n\n"

                                      "O m'Awurade! Bue me kunu aniwa ma ɔnhu ade. Ma wo ho nimdee hann no mma n'ani nnye. "
                                      "Twe n'adwene kɔ Wo ahoɔfɛ a ɛhyerɛn no so, ma Wo hann a ɛda adi pefee no nkanyan ne sunsum. \n\n"

                                      "O m'Awurade, yi nkatanim no fi n'anim. Tɔ W'adom nsu mmoroso no gu ne so, ma Wo ho dɔ bobesa no mmoro no "
                                      "ma ɔnyɛ sɛ W'abɔfo a wɔnantew asase yi so bere a wɔn akra tu faa nenam sorosoro akyirikyiri no mu baako.\n\n"

                                      "Boa no ma ne kanea nhyerɛn mma ne hyerɛn no nyɛ hann te sɛ Wo nyansa wɔ Wo nkurɔfo mu.\n\n"
                                      "Nokware ni, Wo na Wosom bo, Wo na wokyɛ ade bere nyinaa, Wo a wotrɛw Wo nsam.\n\n"
                                      ,

                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),

                                    indentation: Offset (0.0, 0.0),
                                    style: TextStyle(fontSize:  (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,),
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
                                      textAlign: TextAlign.end, maxFontSize: 56, minFontSize: 8, maxLines: 1,),
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