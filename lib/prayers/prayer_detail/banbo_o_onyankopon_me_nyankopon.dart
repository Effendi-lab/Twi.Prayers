import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:share_extend/share_extend.dart';

class BanboOOnyankoponMeNyankopon extends StatefulWidget {
  @override
  _BanboOOnyankoponMeNyankoponState createState() => _BanboOOnyankoponMeNyankoponState();
}

class _BanboOOnyankoponMeNyankoponState extends State<BanboOOnyankoponMeNyankopon> {
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
                    style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                  actions: <Widget>[
                    IconButton(icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                      ShareExtend.share("BANBƆ\n\n"
                          "O Onyankopɔn, me Nyankopɔn, bɔ Wo nkoa a Wɔgye Wo di ho ban fi wɔn nsusui ne "
                          "akɔnnɔbɔne ho na fa Wo dɔ ayamye aniwa no a "
                          "Wonyi mfi wɔn so da no bɔ wɔn ho ban fi nnitan, ɔtan ne anibere ho. Fa wɔn sie Wo botantim no ase, "
                          "na atwe wɔn afi gyidi a ɛrenhinhim ho.\n\n"

                          "Ma wɔnna W'anuonyam nsɛnkyerɛnne no adi. Ma nsensan (asranee) a ɛfi Wo soro koroyɛ Da foforo no "
                          "hann no mu no mma wɔn anim nhyerɛn na Wo nsɛm a ɛfi W'ahemman Kronkron no mu no mma wɔn "
                          "ani nnye; Ma Wo nkanyan tumi a ɛfi W'anuonyam ahennwa no anim no mma wɔn ahoɔden mmoroso.\n\n"

                          "Wo na Wowɔ ade nyinaa, Wo ne Ɔbanbɔfo no, Otumfo ne Ɔdomfo no.\n\n"

                          "'Abdu'l-Bahá\n\n\n"
                          "Onyame Nkae app", "text", sharePanelTitle: "Banbɔ", subject: "Twi Prayers");
                    },)
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Banbɔ", style:TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Banbo3_O_Nyankopon.mp3"));
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

                                  child: DropCapText("OOnyankopɔn, me Nyankopɔn, bɔ Wo nkoa a Wɔgye Wo di ho ban fi wɔn nsusui ne "
                        "akɔnnɔbɔne ho na fa Wo dɔ ayamye aniwa no a "
                        "Wonyi mfi wɔn so da no bɔ wɔn ho ban fi nnitan, ɔtan ne anibere ho. Fa wɔn sie Wo botantim no ase, "
                                      "na atwe wɔn afi gyidi a ɛrenhinhim ho.\n\n"

                                      "Ma wɔnna W'anuonyam nsɛnkyerɛnne no adi. Ma nsensan (asranee) a ɛfi Wo soro koroyɛ Da foforo no "
                                      "hann no mu no mma wɔn anim nhyerɛn na Wo nsɛm a ɛfi W'ahemman Kronkron no mu no mma wɔn "
                                      "ani nnye; Ma Wo nkanyan tumi a ɛfi W'anuonyam ahennwa no anim no mma wɔn ahoɔden mmoroso.\n\n"

                                      "Wo na Wowɔ ade nyinaa, Wo ne Ɔbanbɔfo no, Otumfo ne Ɔdomfo no.",
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
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                        fontFamily: "NotoSans",fontWeight: FontWeight.bold),
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