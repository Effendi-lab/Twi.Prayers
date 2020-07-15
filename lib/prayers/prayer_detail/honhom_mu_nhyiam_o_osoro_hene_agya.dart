import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class HonhomMuNhyiamOOsoroHeneAgya extends StatefulWidget {
  @override
  _HonhomMuNhyiamOOsoroHeneAgyaState createState() => _HonhomMuNhyiamOOsoroHeneAgyaState();
}

class _HonhomMuNhyiamOOsoroHeneAgyaState extends State<HonhomMuNhyiamOOsoroHeneAgya> {
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
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors:[Colors.black, Colors.red[300]] ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,),
                      onPressed: (){
                        ShareExtend.share("HONHOM MU NHYIAM\n\n"
                            "O Ɔsoro Hene Agya! Yɛahyia ha ɔhonam mu de, nanso yɛn koma a anya atenka sononko yi repagyaw yɛn Wo ho dɔ nti na "
                            "ɛno akyi no W'anim hyerɛn asran (nsensan) no na ɛde yɛn rekɔ. Yɛyɛ mmerɛw de, nanso yɛretwɛn Wo ahoɔden ne tumi bɔhyɛ no. "
                            "Yɛyɛ ahiafo de, yɛnni biribi anaa nnyinaso bi, nso yɛnya nnepa fi Wo Soro agyapade no mu. Yɛyɛ nsu a ɛresosɔw ko, Ko, ko, de, "
                            "nanso yɛnya nea yɛhia fi Wo po donkodonko no mu. Yɛyɛ dɔte nkyekyɛmu ketewa bi de, nanso yɛnya yɛn hyerɛn kyɛfa fi W'anuonyam "
                            "awia hyireen no mu.\n\n"

                            "O, Wo a Woma yɛn ahiade! Ma Wo mmoa nsian ngu yɛn so, na ama yɛn a yɛahyia ha yi mu biara  ahyerɛn te sɛ kyɛnerɛ a wasɔ, "
                            "obiara atwetwe afoforo aba W'ahemman no mu, na awiei koraa  yɛaboa ama wiase kusuu yi abɛyɛ Wo Paradise ahemman no ho "
                            "nsɛnkyerɛnne (susudua).\n\n"

                            "'Abdu'l-Bahá\n\n\n"
                            "Onyame Nkae app",

                            "text", sharePanelTitle: "Honhom Mu Nhyiam", subject: "Twi Prayers");
                      },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Honhom Mu Nhyiam", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors:[Colors.black, Colors.red[300]] ),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/HonhomMuNhyiam1_O_Osoro_Hene.mp3"));
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

                            AutoSizeText("(Mo nhyia wɔ ahosɛpɛw a nkekae nni ho mu, na morebɛfi nhyiam no ase no, mommɔ saa mpae yi)",
                              style:  TextStyle(fontSize: 20*_scale,  fontStyle: FontStyle.italic, fontFamily: "NotoSans"),
                              textAlign: TextAlign.center, maxFontSize: 50, minFontSize: 12, maxLines: 4, ),

                            Divider( height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: DropCapText("OƆsoro Hene Agya! Yɛahyia ha ɔhonam mu de, nanso yɛn koma a anya atenka sononko yi repagyaw yɛn Wo ho dɔ nti na "
                            "ɛno akyi no W'anim hyerɛn asran (nsensan) no na ɛde yɛn rekɔ. Yɛyɛ mmerɛw de, nanso yɛretwɛn Wo ahoɔden ne tumi bɔhyɛ no. "
                            "Yɛyɛ ahiafo de, yɛnni biribi anaa nnyinaso bi, nso yɛnya nnepa fi Wo Soro agyapade no mu. Yɛyɛ nsu a ɛresosɔw ko, Ko, ko, de, "
                            "nanso yɛnya nea yɛhia fi Wo po donkodonko no mu. Yɛyɛ dɔte nkyekyɛmu ketewa bi de, nanso yɛnya yɛn hyerɛn kyɛfa fi W'anuonyam "
                                      "awia hyireen no mu.\n\n"

                                      "O, Wo a Woma yɛn ahiade! Ma Wo mmoa nsian ngu yɛn so, na ama yɛn a yɛahyia ha yi mu biara  ahyerɛn te sɛ kyɛnerɛ a wasɔ, "
                                      "obiara atwetwe afoforo aba W'ahemman no mu, na awiei koraa  yɛaboa ama wiase kusuu yi abɛyɛ Wo Paradise ahemman no ho "
                                      "nsɛnkyerɛnne (susudua).",
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
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0),
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