import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class BonefafiriAyeyiNkaWo extends StatefulWidget {
  @override
  _BonefafiriAyeyiNkaWoState createState() => _BonefafiriAyeyiNkaWoState();
}

class _BonefafiriAyeyiNkaWoState extends State<BonefafiriAyeyiNkaWo> {
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
                    IconButton(icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                      ShareExtend.share("BƆNEFAFIRI\n\n"
                          "Ayeyi nka Wo; O Awurade! Fa yɛn  bɔne kyɛ yɛn, hu yɛn mmɔbɔ na boa yɛn ma yɛntumi nsan mmra Wo hɔ. Esane W'adom a "
                          "ɛnsa da nti, boa yɛn na yɛmfa yɛn ho nto Wo nkutoo so, na ma yɛnyɛ W'apɛde ne nea Wo dɔ, na ɛfata Wo. Korɔn nnipa a wɔanya "
                          "Wo mu gyidi nokware mu no gyinabere, na fa wɔn mfomso kyɛ wɔn. \n\n"

                          "Nokware, Wo ne ahokyere bere mu Boafo, Wo na Wote Wo ho so.\n\n"

                          "Báb\n\n\n"
                          "Onyame Nkae app", "text",sharePanelTitle: "Bɔnefafiri", subject: "Twi Prayers");
                    },)
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Bɔnefafiri", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Bonefafiri1_Ayeyi_nka_Wo.mp3"));
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

                                  child: DropCapText("Ayeyi nka Wo; O Awurade! Fa yɛn  bɔne kyɛ yɛn, hu yɛn mmɔbɔ na boa yɛn ma yɛntumi nsan mmra Wo hɔ. Esane W'adom a "
                                      "ɛnsa da nti, boa yɛn na yɛmfa yɛn ho nto Wo nkutoo so, na ma yɛnyɛ W'apɛde ne nea Wo dɔ, na ɛfata Wo. Korɔn nnipa a wɔanya "
                                      "Wo mu gyidi nokware mu no gyinabere, na fa wɔn mfomso kyɛ wɔn. \n\n"

                                      "Nokware, Wo ne ahokyere bere mu Boafo, Wo na Wote Wo ho so.",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),

                                    indentation: Offset (0.0, 0.0),
                                    style: TextStyle(fontSize:  (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),


                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("Báb", style: TextStyle(fontSize:  (20*_scale).clamp(12.0, 50.0),
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