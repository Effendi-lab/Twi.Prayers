import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';



class SoObi extends StatefulWidget {
  @override
  _SoObiState createState() => _SoObiState();
}

class _SoObiState extends State<SoObi> {
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
    return  GestureDetector(
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
                  centerTitle: true, elevation: 20, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                  actions: <Widget>[
                    IconButton(icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                      ShareExtend.share(
                          "SƆHWƐ BERE \n\n"
                              "So, obi wɔ hɔ a ɔpa ahokyere gu ka Onyankopɔn ho? Ka se: Ayeyi nka Onyame. "
                              "Ɔyɛ Onyame ampa! Abɔde nyinaa yɛ Ne nkoa, na nea Ɔpɛ na wɔyɛ. "
                              "(Na Nea Ɔpɛ na Ne nkoa yɛ ma No)!\n\n"
                              "Báb\n\n"
                              "Onyame Nkae",
                          "text", sharePanelTitle:"Sɔhwɛ Bere" , subject: "Twi Prayers");

                    },)
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Sɔhwɛ Bere", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                      automaticallyImplyLeading: false,

                      actions: <Widget>[

                        IconButton(icon: Icon(Icons.play_circle_outline,),
                          iconSize: 30,
                          onPressed: ()
                          {
                            _assetsAudioPlayer.open(Audio("audios/SohweBere1_So_Obi.mp3"));
                            _assetsAudioPlayer.play();
                          },),
                        IconButton(
                          icon: Icon(Icons.stop,), iconSize: 30, onPressed: ()
                        {
                          _assetsAudioPlayer.stop();
                        },)
                      ],
                      centerTitle: true,
                      gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])

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

                                  child: DropCapText("So, obi wɔ hɔ a ɔpa ahokyere gu ka Onyankopɔn ho? Ka se: Ayeyi nka Onyame. "
                                      "Ɔyɛ Onyame ampa! Abɔde nyinaa yɛ Ne nkoa, na nea Ɔpɛ na wɔyɛ. "
                                      "(Na Nea Ɔpɛ na Ne nkoa yɛ ma No)!\n",


                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                        fontFamily: "NotoSerif", height:(1.0)),

                                    indentation: Offset(0.0, 0.0),
                                    style:  TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans",
                                      height:(1.40),),
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
                                    child: AutoSizeText("Báb", style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0),
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


