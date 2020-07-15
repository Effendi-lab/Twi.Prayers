import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class NsraMpaeAbdulBahaDeNo extends StatefulWidget {
  @override
  _NsraMpaeAbdulBahaDeNoState createState() => _NsraMpaeAbdulBahaDeNoState();
}

class _NsraMpaeAbdulBahaDeNoState extends State<NsraMpaeAbdulBahaDeNo> {
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
                      icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                        ShareExtend.share("NSRA MPAE (ABDU'L-BAHÁ DE NO)\n\n"
                            "Wɔbɔ saa mpae yi a 'Abdu'l-Bahá daa no adi no wɔ beae a N'amu da. Bio Ankorɛankorɛ nso tumi de "
                            "yɛ mpaebɔ)\n\n"

                            "'Abdu'l-Bahá se: Obiara a ɔde ahobrɛase ne gyidi pi bɛbɔ saa mpae yi no bɛma anigye ne "
                            "ahosɛpɛw ahyɛ saa Akoa yi akoma ma a ɛbɛyɛ sɛ wahyia no ani ne ani.\n\n"
                            "Ɔno na Anuonyam nyinaa wɔ no! \n\nO Nyankopɔn, me Nyankopɔn! Mapagyaw me nkotosrɛ nsa yi de kyerɛ Wo "
                            "na mede m'anim abutuw (sie) W'aboboano mfuturu a ɛsen animdefo nyansa ne ayeyi a wɔn a wɔhyɛ Wo anuonyam "
                            "de ma Wo no.\n\n"

                            "Dan hwɛ W'akoa, ɔhobrɛaseni ne mmɔbrɔni yi na fa W'ahummɔbɔ aniwa no hwɛ no na fa no hyɛ W'adom "
                            "a ɛwɔ hɔ daa Po no mu.\n\n"

                            "Awurade! ɔyɛ W'akoa mmɔbrɔni, de kyewpa a ɛnni kabea kotow srɛ Wo, yɛ deduani wɔ Wo nsam, "
                            "bɔ Wo mpae denneennen, de ne werɛ ahyɛ Wo mu, de su gyina W'anim, su frɛ Wo se:\n\n"

                            "O Awurade, me Nyankopɔn! Ma me W'adom na mede asom W'adɔfo, hyɛ me den wɔ ɔsom a mɛsom Wo no mu, "
                            "na hann a wɔde som wɔ Wo kronkronbea (krokron atenae) hɔ nhyerɛn m'aniakyi na atwe me ahyɛn W'ahemman "
                            "kɛse no mu. Boa me na mapa me ho akyi asom wɔ Wo soro aboboano hɔ na matumi atwe me ho afi biribiara a "
                            "ɛwɔ Wo kronkronbea hɔ ho.\n\n"

                            "Awurade!  Ma mennom W'ahopakyi kurawa no ano; fa n'adurade hyɛ me, na fa me nu ne nsu (po) no mu. "
                            "Ma me nyɛ sɛ mfuturu wɔ W'adɔfonom annanase na ma ho kwan na matumi de me kra abɔ afɔre ama wiase wɔ "
                            "ananmmɔn a wɔn a Woapaw wɔn no afa so no so, O Anuonyam Wura a wowɔ Soro.\n\n"

                            "Saa mpae yi na W'akoa nam so frɛ Wo ahemenakye ne anadwo bere mu. Yɛ n'akoma so abisade ma no, "
                            "O Awurade! Ma n'akoma mu nhyerɛn, na n'ani nnye, ne hann nhyerɛn, sɛnea ɔbɛsom Wo ne Wo nkoa.\n\n"

                            "Wo ne Ɔkyɛade, Ahummɔbɔ, Wo a wo nsa gow, Ɔdomfo, Mmɔborɔhunufo, Ɔtema no.\n\n"
                            "'Abdu'l-Bahá\n\n\n"
                            "Onyame Nkae app"
                            , "text", sharePanelTitle: "Nsra Mpae", subject: "Twi Prayers");
                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Nsra Mpae", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/NsraMpae_Abdul-Baha_de_no.mp3"));
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

                                  child: Text("(Wɔbɔ saa mpae yi a 'Abdu'l-Bahá daa no adi no wɔ beae a N'amu da. Bio Ankorɛankorɛ nso tumi de "
                                      "yɛ mpaebɔ)",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), height: 1.40, fontFamily: "NotoSans", fontStyle: FontStyle.italic),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("'Abdu'l-Bahá se: Obiara a ɔde ahobrɛase ne gyidi pi bɛbɔ saa mpae yi no bɛma anigye ne "
                                      "ahosɛpɛw ahyɛ saa Akoa yi akoma ma a ɛbɛyɛ sɛ wahyia no ani ne ani.",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), height: 1.40, fontFamily: "NotoSans", fontStyle: FontStyle.italic),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                            Divider(height: 20, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: DropCapText("Ɔno na Anuonyam nyinaa wɔ no! \n\nO Nyankopɔn, me Nyankopɔn! Mapagyaw me nkotosrɛ nsa yi de kyerɛ Wo "
                            "na mede m'anim abutuw (sie) W'aboboano mfuturu a ɛsen animdefo nyansa ne ayeyi a wɔn a wɔhyɛ Wo anuonyam "
                                      "de ma Wo no.\n\n"

                                      "Dan hwɛ W'akoa, ɔhobrɛaseni ne mmɔbrɔni yi na fa W'ahummɔbɔ aniwa no hwɛ no na fa no hyɛ W'adom "
                                      "a ɛwɔ hɔ daa Po no mu.\n\n"

                                      "Awurade! ɔyɛ W'akoa mmɔbrɔni, de kyewpa a ɛnni kabea kotow srɛ Wo, yɛ deduani wɔ Wo nsam, "
                                      "bɔ Wo mpae denneennen, de ne werɛ ahyɛ Wo mu, de su gyina W'anim, su frɛ Wo se:\n\n"

                                      "O Awurade, me Nyankopɔn! Ma me W'adom na mede asom W'adɔfo, hyɛ me den wɔ ɔsom a mɛsom Wo no mu, "
                                      "na hann a wɔde som wɔ Wo kronkronbea (krokron atenae) hɔ nhyerɛn m'aniakyi na atwe me ahyɛn W'ahemman "
                                      "kɛse no mu. Boa me na mapa me ho akyi asom wɔ Wo soro aboboano hɔ na matumi atwe me ho afi biribiara a "
                                      "ɛwɔ Wo kronkronbea hɔ ho.\n\n"

                                      "Awurade!  Ma mennom W'ahopakyi kurawa no ano; fa n'adurade hyɛ me, na fa me nu ne nsu (po) no mu. "
                                      "Ma me nyɛ sɛ mfuturu wɔ W'adɔfonom annanase na ma ho kwan na matumi de me kra abɔ afɔre ama wiase wɔ "
                                      "ananmmɔn a wɔn a Woapaw wɔn no afa so no so, O Anuonyam Wura a wowɔ Soro.\n\n"

                                      "Saa mpae yi na W'akoa nam so frɛ Wo ahemenakye ne anadwo bere mu. Yɛ n'akoma so abisade ma no, "
                                      "O Awurade! Ma n'akoma mu nhyerɛn, na n'ani nnye, ne hann nhyerɛn, sɛnea ɔbɛsom Wo ne Wo nkoa.\n\n"

                                      "Wo ne Ɔkyɛade, Ahummɔbɔ, Wo a wo nsa gow, Ɔdomfo, Mmɔborɔhunufo, Ɔtema no.",
                                    parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                    mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                    dropCapStyle: TextStyle(fontSize:(60*_scale).clamp(37.0, 150.0),
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
                                      textAlign: TextAlign.end, maxLines: 1, ),
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