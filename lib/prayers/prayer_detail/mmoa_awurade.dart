import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';


class Awurade extends StatefulWidget {
  @override
  _AwuradeState createState() => _AwuradeState();
}

class _AwuradeState extends State<Awurade> {
  double _prevScale;
  double _scale;
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();


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
                    icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                      ShareExtend.share("text\n\n"
                          "Awurade! Yɛyɛ mmɔbɔ hu yɛn mmɔbɔ; yɛyɛ ahiafo, ma yɛn yɛn kyɛfa a ɛfi W'ahonya po no mu; ahia yɛn, ma yɛn yɛn ahiade, yɛn anim agu ase, ma yɛnnya W'anuonyam. Wim nnomaa ne asase so mmoa nyinaa Wobue Wo "
                          "nsam ma wɔnya wɔn anoduan da biara, na abɔde nyinaa nya wo nhwɛso pa ne Wodɔ mmoroso.\n\n"

                          "Mma W'adom nwonwaso yi ntwa W'akoa ɔhonammerɛwfo yi ho nkɔ. Ma yen daa aduan, "
                          "na yɛn asetena mu ahiade nso ma yɛn mmɔho mmɔho, "
                          "na ama yɛatumi de yɛn ho ato Wo nkutoo so, anya bere ne Wo adi nkitaho, "
                          "na yɛafa Wo kwan pa no so na yɛaka W'anwonwade akyerɛ.\n\n"

                          "Wo ne Okokuroko no ne Ɔdɔfo no, Nea ɔma adasamma ahiade nyinaa.\n\n"
                          "'Abdu'l-Bahá\n\n\n"
                          "Onyame Nkae app", "text", sharePanelTitle: "Mmoa", subject: "Twi Prayers");
                  },
                  )],
                ),
              ),
              body: Scaffold(

                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Mmoa", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {

                    _assetsAudioPlayer.open(Audio("audios/Mmoa2_Awurade.mp3"));
                    _assetsAudioPlayer.play();
                        }),
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

                                  child: DropCapText("Awurade! Yɛyɛ mmɔbɔ hu yɛn mmɔbɔ; yɛyɛ ahiafo, ma yɛn yɛn kyɛfa a ɛfi W'ahonya po no mu; ahia yɛn, ma yɛn yɛn ahiade, yɛn anim agu ase, ma yɛnnya W'anuonyam. Wim nnomaa ne asase so mmoa nyinaa Wobue Wo "
                                      "nsam ma wɔnya wɔn anoduan da biara, na abɔde nyinaa nya wo nhwɛso pa ne Wodɔ mmoroso.\n\n"

                                      "Mma W'adom nwonwaso yi ntwa W'akoa ɔhonammerɛwfo yi ho nkɔ. Ma yen daa aduan, "
                                      "na yɛn asetena mu ahiade nso ma yɛn mmɔho mmɔho, "
                                      "na ama yɛatumi de yɛn ho ato Wo nkutoo so, anya bere ne Wo adi nkitaho, "
                                      "na yɛafa Wo kwan pa no so na yɛaka W'anwonwade akyerɛ.\n\n"

                                      "Wo ne Okokuroko no ne Ɔdɔfo no, Nea ɔma adasamma ahiade nyinaa.",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),


                                    indentation: Offset(0.0, 0.0),
                                    style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40,),
                                    textAlign: TextAlign.start,  ),
                                ),
                              ],
                            ),


                            Divider(
                              height: 15, color: Colors.transparent,
                            ),

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
