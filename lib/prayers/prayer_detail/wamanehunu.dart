
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';





class Wamanehunu extends StatefulWidget {
  @override
  _WamanehunuState createState() => _WamanehunuState();
}

class _WamanehunuState extends State<Wamanehunu> {
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
        audioStop();
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
              child: GradientAppBar(title: Text("Onyame Nkae",
                style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
                centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])
              ),
            ),

            body: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(40),
                child: GradientAppBar(title: Text("Nnianim", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                  automaticallyImplyLeading: false,

                  actions: <Widget>[
                    IconButton(icon: Icon(Icons.play_circle_outline,),
                      iconSize: 30,
                      onPressed: () =>
                      {
                        audioPlay(),
                      },
                    ),
                    IconButton(icon: Icon(Icons.stop,),
                      iconSize: 30,
                      onPressed: () =>
                      {
                        audioStop(),
                      },
                    ),



                  ],
                  centerTitle: true, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])

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
                          DropCapText("W'amanehunu nyinaa ano aduru ne Me nkae, mma wo werɛ mfi eyi.",
                            parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                            mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                            dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                              fontFamily: "NotoSerif", height: 1.0,),


                            indentation: Offset(0.0, 0.0),
                            style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40),
                          ),
                          Divider(
                            height: 15, color: Colors.transparent,
                          ),



              Row(children: <Widget>[
                            Expanded(
                              child:AutoSizeText("Bahá'u'lláh"
                                , style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontWeight: FontWeight.bold, fontFamily: "NotoSans"),
                                 textAlign: TextAlign.end, maxLines: 1,),
                            )
                          ],),


                        ],


                      ),
                    ),




            ),






                ],


              ),



            ),



        ),
      ),
    );
  }
}

audioPlay(){
  final assetsAudioPlayer = AssetsAudioPlayer();
  assetsAudioPlayer.open( Audio("audios/Nnianim_Wamanehunu.mp3"));
  assetsAudioPlayer.play();

}

audioStop(){
  final assetsAudioPlayer = AssetsAudioPlayer();
  assetsAudioPlayer.open( Audio("audios/Nnianim_Wamanehunu.mp3"));
  assetsAudioPlayer.stop();
}
















