import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class NkanfoNeAyeyiOAwurade extends StatefulWidget {
  @override
  _NkanfoNeAyeyiOAwuradeState createState() => _NkanfoNeAyeyiOAwuradeState();
}

class _NkanfoNeAyeyiOAwuradeState extends State<NkanfoNeAyeyiOAwurade> {
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
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                        ShareExtend.share("NKANFO NE AYEYI"
                            "O Awurade, me Nyankopɔn, Wo Din yɛ kɛse! Wo na abɔde nyinaa som Wo a Wo nsom obiara, Wo ne nneɛma "
                            "nyinaa wura a Wo nnan obiara, Wo na Wonim biribiara nanso obiara nnim Wo. Wopɛe sɛ Woda Wo ho adi kyerɛ "
                            "nnipa nti, Wonam Wo nyansa ne W'anum asɛm so bɔɔ wiase ne mu nneɛma nyina. Onyame foforo bi nni hɔ ka Wo ho, "
                            "Wo a Wobɔɔ wiase, hyehyɛɛ mu nneɛma nyinaa, Ɔkɛse ne Tumi nyina  Wura.\n\n"

                            "Mede saa asɛm yi a ada ne ho adi wɔ biribiara so wɔ Wo pɛ mu no, sɛ, ma mennom nkwa nsu a ama "
                            "wɔn a Woapaw wɔn no koma asi pi, na akanyan akra a wɔdɔ Wo no, na ama bere biara mahu Wo na mede me "
                            "ho nyinaa ato Wo so. Wo ne tumi, adom ne anuonyam nyinaa Nyankopɔn.\n\n"

                            "Onyame foforo bi nni hɔ ka Wo ho, ahene mu Hene, Anounyam nyinaa farebae, "
                            "Birekyirihuade Onyame a Wohu ade nyinaaa.\n\n"
                            "Bahá'u'lláh\n\n\n"
                            "Onyame Nkae app",
                          "text", sharePanelTitle: "", subject: "Twi Prayers", );
                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Nkanfo Ne Ayeyi", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/NkanfoNeAyeyi1_O_Awurade.mp3"));
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

                                  child: DropCapText("OAwurade, me Nyankopɔn, Wo Din yɛ kɛse! Wo na abɔde nyinaa som Wo a Wo nsom obiara, Wo ne nneɛma "
                            "nyinaa wura a Wo nnan obiara, Wo na Wonim biribiara nanso obiara nnim Wo. Wopɛe sɛ Woda Wo ho adi kyerɛ "
                        "nnipa nti, Wonam Wo nyansa ne W'anum asɛm so bɔɔ wiase ne mu nneɛma nyina. Onyame foforo bi nni hɔ ka Wo ho, "
                                      "Wo a Wobɔɔ wiase, hyehyɛɛ mu nneɛma nyinaa, Ɔkɛse ne Tumi nyina  Wura.\n\n"

                                      "Mede saa asɛm yi a ada ne ho adi wɔ biribiara so wɔ Wo pɛ mu no, sɛ, ma mennom nkwa nsu a ama "
                                      "wɔn a Woapaw wɔn no koma asi pi, na akanyan akra a wɔdɔ Wo no, na ama bere biara mahu Wo na mede me "
                                      "ho nyinaa ato Wo so. Wo ne tumi, adom ne anuonyam nyinaa Nyankopɔn.\n\n"

                                      "Onyame foforo bi nni hɔ ka Wo ho, ahene mu Hene, Anounyam nyinaa farebae, "
                                      "Birekyirihuade Onyame a Wohu ade nyinaaa.",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                      fontFamily: "NotoSerif", height: 1.0,),


                                    indentation: Offset(0.0, 0.0),
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                        fontFamily: "NotoSans", height: 1.40), ),
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