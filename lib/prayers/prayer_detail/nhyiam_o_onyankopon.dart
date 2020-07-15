import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class NhyiamOOnyankopon extends StatefulWidget {
  @override
  _NhyiamOOnyankoponState createState() => _NhyiamOOnyankoponState();
}

class _NhyiamOOnyankoponState extends State<NhyiamOOnyankopon> {
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
    _assetsAudioPlayer.stop();
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
                    style: TextStyle(fontSize: 25),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                    actions: <Widget>[
                      IconButton(
                    icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                      ShareExtend.share("MPAE A WƆBƆ BERE A WƆAWIE NHYIAM\n\n"

                          "OOnyankopɔn! O Onyankopɔn! Fi wo biakoyɛ ahemman a ani nhu no mu hwɛ sɛ yɛahyia wɔ honhom mu nhyiam"
                          " yi ase. Yegye Wo di, wɔ awerɛhyem wɔ Wo nsɛnkyerɛnne mu. Yɛaso W'Apam ne W'Asɛm no mu pintinn, yɛatwiw abɛn Wo na Wo ho dɔ "
                          "gya no redɛw biribiri wɔ yɛn mu na yɛdi nokware wɔ Wo som mu. Yɛyɛ nkoa wɔ Wo bobeturow no mu, yɛrebɔ Wo som no ho dawuru. "
                          "Yɛyɛ nokware asomfo ma Wo su ne Wo Ban, brɛ yɛn ho ase ma W'adɔfonom, kotowkotow Wo pon no ano, resrɛ Wo sɛ; hyɛ yɛn den na "
                          "yɛnsom wɔn a Woapaw wɔn no. Ma ɔsoro Atumfo mmɛtaa yɛn akyi, mmɛhyɛ yɛn den, Wo som mu na Woaboa ama yɛatumi  Abrɛbrɛ yɛn "
                          "ho ase ayɛ asomfo (nkoa) papa a wɔne Wodi nkitaho.\n\n"

                          "O yɛn Awurade! Yɛyɛ mmerɛw, Wo na Woyɛ Ɔkɛse ne Otumfo.Yɛawuwu sunsum mu na Wo na Woma Honhom mu nkwa kɛse no. "
                          "Ahia yɛn na Wo na Woma ahonya nyinaa, Wo ne Otumfo no.\n\n"

                          "O yɛn Awurade! Dan yɛn anim kyerɛ W'ahummɔbɔ aniwa no, fa W'adam kɛse no ma yɛn aduan a ɛfi ɔsoro adidipon no so. "
                          "Ma abɔfo a wɔkorɔn dɔm no mmɛboa yɛn na ma Abhà Ahemman no mu ahoteefo no nhyɛ yɛn den.\n\n"

                          "Nokware, Wo ne Adom Wura, Mmɔborɔhunufo no, Wo na mmoa nyinaa yɛ Wo dea, na nokware, Wobu w'ani gu bɔne so na "
                          "Wo ne Ɔdomfo no.\n\n"
                          "'Abdu'l-Bahá\n\n\n"
                          "Onyame Nkae app", "text", sharePanelTitle: "Nhyiam", subject: "Twi Prayers");
              },
                )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Nhyiam", style:TextStyle(fontSize: 20),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Nhyiam2_O_Onyankopon.mp3"));
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
                                  child: AutoSizeText("MPAE A WƆBƆ BERE A WƆAWIE NHYIAM", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontWeight: FontWeight.bold, fontFamily: "NotoSerif"),
                                    textAlign: TextAlign.center, maxLines: 2,),
                                ),
                              ],
                            ),

                            Divider( height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: DropCapText("OOnyankopɔn! O Onyankopɔn! Fi wo biakoyɛ ahemman a ani nhu no mu hwɛ sɛ yɛahyia wɔ honhom mu nhyiam"
                                      " yi ase. Yegye Wo di, wɔ awerɛhyem wɔ Wo nsɛnkyerɛnne mu. Yɛaso W'Apam ne W'Asɛm no mu pintinn, yɛatwiw abɛn Wo na Wo ho dɔ "
                        "gya no redɛw biribiri wɔ yɛn mu na yɛdi nokware wɔ Wo som mu. Yɛyɛ nkoa wɔ Wo bobeturow no mu, yɛrebɔ Wo som no ho dawuru. "
                        "Yɛyɛ nokware asomfo ma Wo su ne Wo Ban, brɛ yɛn ho ase ma W'adɔfonom, kotowkotow Wo pon no ano, resrɛ Wo sɛ; hyɛ yɛn den na "
                        "yɛnsom wɔn a Woapaw wɔn no. Ma ɔsoro Atumfo mmɛtaa yɛn akyi, mmɛhyɛ yɛn den, Wo som mu na Woaboa ama yɛatumi  Abrɛbrɛ yɛn "
                                      "ho ase ayɛ asomfo (nkoa) papa a wɔne Wodi nkitaho.\n\n"

                                      "O yɛn Awurade! Yɛyɛ mmerɛw, Wo na Woyɛ Ɔkɛse ne Otumfo.Yɛawuwu sunsum mu na Wo na Woma Honhom mu nkwa kɛse no. "
                                      "Ahia yɛn na Wo na Woma ahonya nyinaa, Wo ne Otumfo no.\n\n"

                                      "O yɛn Awurade! Dan yɛn anim kyerɛ W'ahummɔbɔ aniwa no, fa W'adam kɛse no ma yɛn aduan a ɛfi ɔsoro adidipon no so. "
                                      "Ma abɔfo a wɔkorɔn dɔm no mmɛboa yɛn na ma Abhà Ahemman no mu ahoteefo no nhyɛ yɛn den.\n\n"

                                      "Nokware, Wo ne Adom Wura, Mmɔborɔhunufo no, Wo na mmoa nyinaa yɛ Wo dea, na nokware, Wobu w'ani gu bɔne so na "
                                      "Wo ne Ɔdomfo no.",
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
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), fontWeight: FontWeight.bold),
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