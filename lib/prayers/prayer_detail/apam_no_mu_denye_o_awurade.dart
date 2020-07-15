import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:share_extend/share_extend.dart';

class ApamNoMuDenyeOAwurade extends StatefulWidget {
  @override
  _ApamNoMuDenyeOAwuradeState createState() => _ApamNoMuDenyeOAwuradeState();
}

class _ApamNoMuDenyeOAwuradeState extends State<ApamNoMuDenyeOAwurade> {
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
                    actions: <Widget>[IconButton(
                      icon: Icon(Icons.share, size: 30.0,),
                      onPressed: (){
                        ShareExtend.share("APAM NO MU DENYƐ\n\n"
                            "O Awurade ne m'Anidaso! Boa W'adɔfonom na wɔatumi agyina pintinn wɔ W'apam kokuroko no mu, wɔasi pi wɔ Wo som a woada no adi no "
                            "mu, na wɔadi Wo mmaransɛm a Woahyehyɛ wɔ Wo Nwoma kronkron no mu no so; sɛnea ɛbɛyɛ a wɔbɛyɛ akwankyerɛ frankaa ne ɔsoro Dɔm no akanea, "
                            "asuti a wɔda Wo nyansa a ɛnsa da no adi, nsoromma a wɔkyerɛ adasa kwan tenenee no, sɛnea wɔhyerɛn fi Wo sorosoro hɔ no.\n\n"

                            "Nokware ni, Wo a obi mfa n'ani nhu Wo, Okokuroko, Tumi wura.\n\n"

                            "'Abdu'l-Bahá\n\n\n"

                            "Onyame Nkae app", "text", sharePanelTitle: "Apam No Mu Denyɛ", subject: "Twi Prayers");
                      },
                    )],

                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Apam No Mu Denyɛ", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/ApamNoMuDenye1_O_Awurade.mp3"));
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

                                  child: DropCapText("OAwurade ne m'Anidaso! Boa W'adɔfonom na wɔatumi agyina pintinn wɔ W'apam kokuroko no mu, wɔasi pi wɔ Wo som a woada no adi no "
                                      "mu, na wɔadi Wo mmaransɛm a Woahyehyɛ wɔ Wo Nwoma kronkron no mu no so; sɛnea ɛbɛyɛ a wɔbɛyɛ akwankyerɛ frankaa ne ɔsoro Dɔm no akanea, "
                                      "asuti a wɔda Wo nyansa a ɛnsa da no adi, nsoromma a wɔkyerɛ adasa kwan tenenee no, sɛnea wɔhyerɛn fi Wo sorosoro hɔ no.\n\n"

                                      "Nokware ni, Wo a obi mfa n'ani nhu Wo, Okokuroko, Tumi wura.",
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize:  (20*_scale).clamp(12.0, 50.0),
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