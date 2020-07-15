import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class ONipaBaSeMakoaBi extends StatefulWidget {
  @override
  _ONipaBaSeMakoaBiState createState() => _ONipaBaSeMakoaBiState();
}

class _ONipaBaSeMakoaBiState extends State<ONipaBaSeMakoaBi> {
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
                      icon: Icon(Icons.share, size: 30.0,),onPressed: (){
                        ShareExtend.share("AHINTASƐM\n\n"
                            "O Nipa Ba!\n"
                            "Sɛ M'akoa bi bisa wo biribi a, mfa nkame no, efisɛ n'anim yɛ M'anim; na ngu w'anim ase wɔ M'anim.\n\n"
                            "(30)\n\n"
                            "Onyame Nkae", "text", sharePanelTitle: "", subject: "Onyame Nkae");
                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Ahintasɛm", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/HiddenWordsAudio/ONipaBa_SeMakoaBi.mp3"));
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

                                  child: DropCapText("O**NIPA BA!** \n"
                                      "Sɛ M'akoa bi bisa wo biribi a, mfa nkame no, efisɛ n'anim yɛ M'anim; na ngu w'anim ase wɔ M'anim.",
                          parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                          mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 7.0),
                          dropCapStyle: TextStyle(fontSize:  (60*_scale).clamp(37.0, 108.0),
                              fontFamily: "NotoSerif", height: 1.0, fontWeight: FontWeight.bold),
                          indentation: Offset(0.0, 2.0),
                          style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 36.0),
                            fontFamily: "NotoSans", height: 1.40,   ),
                                )
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),


                            Row(
                              children: <Widget>[

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("(30)", style: TextStyle(fontSize: 20*_scale,),
                                      textAlign: TextAlign.end, maxFontSize: 36, minFontSize: 12,),
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