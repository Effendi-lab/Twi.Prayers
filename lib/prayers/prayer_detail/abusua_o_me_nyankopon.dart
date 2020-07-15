import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class AbusuaOMeNyankopon extends StatefulWidget {
  @override
  _AbusuaOMeNyankoponState createState() => _AbusuaOMeNyankoponState();
}

class _AbusuaOMeNyankoponState extends State<AbusuaOMeNyankopon> {
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

                child:GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,),
                      onPressed: (){
                        ShareExtend.share("ABUSUA\n\n"
                            "O me Nyankopɔn mesrɛ Wo hɔ bɔnefafiri, na mesrɛ akwankyerɛ sɛnea ɛbɛyɛ a Wo nkoa bɛtumi adan wɔn ani akyerɛ Wo. "
                            "Mesrɛ bio sɛ, popa yɛn bɔne na yɛnyɛ nea ɛfata Wo Awurade, na fa me, m'awofo ne wɔn a Wo ankasa wo nsusui mu wɔahyɛn "
                            "Wo dɔ ase na wɔnam kwan a ɛfata W'ahenni a ɛkorɔn no na ɛsɛ Wo sorosoro tumi anuonyam no.\n\n"
                            "O me Nyankopɔn! Woahyɛ me kra nkuran ma ɔkotow srɛ Wo, na sɛ ɛnyɛ Wo a, anka merentumi nsu mfrɛ Wo. "
                            "Ayeyi ne anuonyam nka Wo: mede nkamfo ma Wo sɛ ɛyɛe a Wodaa Wo ho adi kyerɛɛ me, na Mesrɛ Wo, fa me mfomso kyɛ me, "
                            "efisɛ metɔ sin wɔ m'asɛde a ɛsɛ sɛ meyɛ de hu Wo na maafom sɛ menantew wɔ Wo dɔ kwan no so.\n\n"
                            "Báb\n\n\n"
                            "Onyame Nkae app", "text", sharePanelTitle: "O me Nyankopɔn"
                        , subject: "Twi Prayers");
                      },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Abusua", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(
                              Audio( "audios/Abusua2_Mawurade.mp3")
                          );
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

                                  child: DropCapText("Ome Nyankopɔn mesrɛ Wo hɔ bɔnefafiri, na mesrɛ akwankyerɛ sɛnea ɛbɛyɛ a Wo nkoa bɛtumi adan wɔn ani akyerɛ Wo. "
                        "Mesrɛ bio sɛ, popa yɛn bɔne na yɛnyɛ nea ɛfata Wo Awurade, na fa me, m'awofo ne wɔn a Wo ankasa wo nsusui mu wɔahyɛn "
                                      "Wo dɔ ase na wɔnam kwan a ɛfata W'ahenni a ɛkorɔn no na ɛsɛ Wo sorosoro tumi anuonyam no.",

                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),


                                    indentation: Offset(0.0, 0.0),
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                        fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start, ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 15,
                              color: Colors.transparent,
                            ),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("O me Nyankopɔn! Woahyɛ me kra nkuran ma ɔkotow srɛ Wo, na sɛ ɛnyɛ Wo a, anka merentumi nsu mfrɛ Wo. "
                            "Ayeyi ne anuonyam nka Wo: mede nkamfo ma Wo sɛ ɛyɛe a Wodaa Wo ho adi kyerɛɛ me, na Mesrɛ Wo, fa me mfomso kyɛ me, "
                                      "efisɛ metɔ sin wɔ m'asɛde a ɛsɛ sɛ meyɛ de hu Wo na maafom sɛ menantew wɔ Wo dɔ kwan no so.",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                        fontFamily: "NotoSans", height: 1.40),),
                                ),
                              ],
                            ),

                            Divider(
                              height: 15,
                              color: Colors.transparent,
                            ),

                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("Báb", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
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
