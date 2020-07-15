import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class HonhomMuDenhyeOMeNyankopon extends StatefulWidget {
  @override
  _HonhomMuDenhyeOMeNyankoponState createState() => _HonhomMuDenhyeOMeNyankoponState();
}

class _HonhomMuDenhyeOMeNyankoponState extends State<HonhomMuDenhyeOMeNyankopon> {
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
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                        ShareExtend.share("HONHOM MU DENHYƐ\n\n"
                            "O me Nyankopɔn, bɔ koma a ɛmu tew ma me, na kanyan m'ahonim yɛ no mmotoo, O m'Anidasoo! ma Wo tumi mu ahoɔden no nhyɛ me "
                            "den wɔ Wo som  mu, O me Dɔfo-pa, na ma W'anuonyam hann no nkyerɛ me Wo  kwantenenee no, O Wo a Woyɛ me kra ahwehwɛde (akrade)! "
                            "Ma Wo tumi a ɛboro ade nyinaa so no mma me so nkɔ soro Wo kronkron tenabea hɔ, O wo a Wo nti  na me wɔ hɔ, na ma Wo daa mframa n"
                            "o mma m'ahosan, O Wo a Woyɛ me Nyankopɔn! Ma Wo daa nne nnyegye no mmɔ ahotɔ mframa ngu  me so, O me Hokafo, na ma nnepa a efi "
                            "Wo tete su no ntwe me mfi biribiara ho gye Wo nkutoo, O me wura. Ma anigyesɛm a ɛda adi wɔ Wo su a ɛnsɛe da no mu no mma m'ahosan, "
                            "O Wo a woda Wo ho adi sen obiara na Woahintaw sen nea ahintaw nyinaa.\n\n"

                            "Bahá'u'lláh\n\n\n"
                            "Onyame Nkae app", "text", sharePanelTitle: "Honhom Mu Denhyɛ", subject: "Twi Prayers");
                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Honhom Mu Denhyɛ", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/HonhomMuDenhye1_O_me_Nyankopon.mp3"));
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

                                  child: DropCapText("Ome Nyankopɔn, bɔ koma a ɛmu tew ma me, na kanyan m'ahonim yɛ no mmotoo, O m'Anidasoo! ma Wo tumi mu ahoɔden no nhyɛ me "
                            "den wɔ Wo som  mu, O me Dɔfo-pa, na ma W'anuonyam hann no nkyerɛ me Wo  kwantenenee no, O Wo a Woyɛ me kra ahwehwɛde (akrade)! "
                            "Ma Wo tumi a ɛboro ade nyinaa so no mma me so nkɔ soro Wo kronkron tenabea hɔ, O wo a Wo nti  na me wɔ hɔ, na ma Wo daa mframa n"
                            "o mma m'ahosan, O Wo a Woyɛ me Nyankopɔn! Ma Wo daa nne nnyegye no mmɔ ahotɔ mframa ngu  me so, O me Hokafo, na ma nnepa a efi "
                                      "Wo tete su no ntwe me mfi biribiara ho gye Wo nkutoo, O me wura. Ma anigyesɛm a ɛda adi wɔ Wo su a ɛnsɛe da no mu no mma m'ahosan, O Wo a woda Wo ho adi sen obiara na Woahintaw sen nea ahintaw nyinaa.",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize:  (60*_scale).clamp(37.0, 150.0),
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