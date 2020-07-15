import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:share_extend/share_extend.dart';

class AhmadAdansePonNo extends StatefulWidget {
  @override
  _AhmadAdansePonNoState createState() => _AhmadAdansePonNoState();
}

class _AhmadAdansePonNoState extends State<AhmadAdansePonNo> {
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
                    style: TextStyle(fontSize: 25, fontFamily: "NotoSerif",),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,),
                      onPressed: (){
                        ShareExtend.share("AHMAD ADANSE PON NO\n\n"
                            "Ɔno ne Ɔhene no, Onim Ade Nyinaa, Nyansa nyinaa Wura no. Paradise Anomaa no kotow Daa Nkwa Dua no so "
                            "de nne dɛdɛɛdɛ reto nnwom, rebɔ Onyame mmae no ho dawuru kyerɛ wɔn a wɔgyina pinntin no, repae mu frɛ wɔn "
                            "a wɔgye Onyame Koroyɛ no di no kɔ wɔn Ahummɔbɔ Wura no Anim, kyerɛ wɔn a wɔatwe wɔn ho afi nea Onyankopɔn, "
                            "Nea Ɔyɛ ɔhene no, Onuonyamfo no, Nea obi ne No nsɛ No ho, rebɔ adɔfo no ho ban twe wɔn bɛn ahotee agua no "
                            "ne saa Ɔhoɔfɛfo yi ho.\n\n"

                            "Nokware, oyi ne Ahoɔfɛ Kɛse no a, Asomafo no Nwoma Kronkron ahorow no bɔɔ ho dawuru no, "
                            "ɛnam Ne so na nokware bɛda adi pefee afi atoro ho, na yɛbɛsan asɔ Nyansa nyinaa ahwɛ. Nokware, "
                            "Ɔyɛ Nkwa Dua a Ɔsow Onyame, Nea Ɔkorɔn, Otumfo no, Ɔkɛse No aba no.\n\n"

                            "O Ahmad! Di adanse sɛ, nokware Ɔyɛ Onyame na Onyame bi nni hɔ ka Ne ho, Ɔhene, Ɔbanbɔfo, "
                            "Onni sɛso na Ɔyɛ Otumfo. Na Nea Ɔsomaa No a wɔfrɛ no Ali (Bàb) no yɛ Ɔnokwafo a ofi Nyame hɔ, "
                            "na Ne mmara na yɛn nyinaa di so.\n\n"

                            "Ka se: O nnipa, monni Onyankopɔn mmara so, sɛnea Onuonyamni Nyansafo no ahyehyɛ wɔ "
                            "Bayan no mu no. Nokware Ɔyɛ Asomafo no mu Hene na ne Nwoma no yɛ kyerɛwsɛm no mu Nwoma kɛse paa ara, "
                            "sɛ monim a.\n\n"

                            "Eyi nti “Anomaa” (Ɔbɔfo), no bɔm ma Ne nne nnyegye, Ne frɛ no nteam no fi afiase ha. Onni "
                            "hwee ka sɛ saa asɛm yi na ɔde rema wo. Obiara a ɔpɛ no, ma no ntwe ne ho mfi saa afotusɛm yi ho, "
                            "na obiara nso a ɔpɛ no ɔmfa n'ankasa kwan so nkɔ n'Awurade hɔ.\n\n"

                            "O nnipa, sɛ mopow saa nsɛm yi a, dɛn na mobɛgyina so de akyerɛ sɛ mogye Onyame di? Monna no adi, "
                            "O atorɔfo dɔm a moahyia mu. Daabi, meka Nea me kra hyɛ Ne nsam! Wɔrenntumi da, sɛ mpo wɔboa, keka wɔn "
                            "ho bobom boaboa wɔn ho ano mpo a, wɔrenntumi nyɛ ɛyi da.\n\n"

                            "O Ahmad! Bere a Menni hɔ yi, mma wo werɛ mfi M'adom. Kae Me nna, M'abrabɔ wɔ wo bere so, na kae "
                            "M'amanehunu ne M'asutwa de bɛdu afiase ha, akyirikyiri yi. Ma Me ho dɔ nsi pi wɔ wo mu na mma wo koma "
                            "nhinhim, sɛ mpo atamfo de mpeaw gu wo so na ɔsoro ne asase sɔre ko tia wo.\n\n"

                            "Mfa wo ho mmɔ wɔn a wɔgye saa asɛm yi ho akyinnye, na mmom yɛ sɛ Ogyatanaa wɔ M'atamfonom so, "
                            "na M'adɔfo de yɛ sɛ daa nkwa asuten ma wɔn.\n\n"

                            "Na sɛ ɔhaw fa wo nnomum wɔ M'akwan mu, anaa Me nti w'anim gu ase a, mma ɛnhaw wo.\n\n"

                            "Fa wo ho to Onyame, wo Nyankopɔn ne w'agyanom Awurade no so. Ɛfisɛ nipa haahaa, fom "
                            "akwantenenee no, adwenepa apare wɔn ma wɔpɛ sɛ wɔde wɔn ani hu Onyankopɔn, na wɔde wɔn ankasa aso "
                            "te Ne nne. Saa ara na Yɛahu wɔn, sɛnea wodi ho adanse no. Saa nti wɔn gyidihunu no abɛyɛ nkatanim "
                            "ama wɔn ne wɔn ankasa akoma, na atwe wɔn afi Onyame, Nea Ɔkorɔn no, Ɔkɛse no kwan no so.\n\n"

                            "Nya awerɛhyɛm sɛ, nokware obiara a ɔtwe ne ho fi saa Ahoɔfɛ yi ho no atwe ne ho afi Asomafo a "
                            "wodii kan no ho na wɔakyerɛ aniamɔwoho su akyerɛ Onyankopɔn fi tete kosi daapem.\n\n"

                            "O Ahmad, sua saa mpae yi yiye. Bere a wote ase yi tow saa nnwom yi bere biara, na ntwe "
                            "wo ho mfi ho. Ɛfisɛ, nokware ni, Onyankopɔn ahyɛ se, Obiara a"
                            " “Ɔbɛtow” no bɛnya mfaso a Ɔsom yi"
                            "mu mogya-adansefo ɔha bɛnya, na wasom wɔ wiase ahorow abien no mu. Eyi ne akyɛde a ɛfi Yɛn pɛ mu "
                            "yɛde ma wo, na ɛyɛ ahummɔbɔ a ɛfi Yɛn nkyɛn de rema wo, sɛ ɛbɛyɛ a wobɛka wɔn a wɔhu na wɔda ase no ho. "
                            "Meka Onyankopɔn! Sɛ obiara a ɔwɔ ahokyere ne awerɛhow mu, de nokware a ɛsi pi bɔ saa Mpae yi a, "
                            "Onyankopɔn bɛyi n'awerɛhow, bɛsi ne haw ano na wapopa n'ahokyere nyinaa.\n\n"

                            "Nokware, Ɔyɛ Adom Hene ne Mmɔborɔhunufo. Nkamfo nka Onyame, Wiase nyinaa Awurade.\n\n"

                            "Bahá'u'lláh\n\n\n"
                            "Onyame Nkae app", "text", sharePanelTitle: "Ahmad Adanse Pon No", subject: "Twi Prayers");
                      },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Ahmad Adanse Pon No", style: TextStyle(fontSize: 20,fontFamily: "NotoSerif" ),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/AhmadAdansePonNo.mp3"));
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

                                  child: Text("AHMAD ADANSE PON NO\n",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontWeight: FontWeight.bold, fontFamily: "NotoSerif"),
                                    textAlign: TextAlign.center, ),
                                ),
                              ],
                            ),
                            // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: DropCapText("Ɔno ne Ɔhene no, Onim Ade Nyinaa, Nyansa nyinaa Wura no. Paradise Anomaa no kotow Daa Nkwa Dua no so "
                            "de nne dɛdɛɛdɛ reto nnwom, rebɔ Onyame mmae no ho dawuru kyerɛ wɔn a wɔgyina pinntin no, repae mu frɛ wɔn "
                            "a wɔgye Onyame Koroyɛ no di no kɔ wɔn Ahummɔbɔ Wura no Anim, kyerɛ wɔn a wɔatwe wɔn ho afi nea Onyankopɔn, "
                            "Nea Ɔyɛ ɔhene no, Onuonyamfo no, Nea obi ne No nsɛ No ho, rebɔ adɔfo no ho ban twe wɔn bɛn ahotee agua no "
                                      "ne saa Ɔhoɔfɛfo yi ho.\n",
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

                                  child: Text("Nokware, oyi ne Ahoɔfɛ Kɛse no a, Asomafo no Nwoma Kronkron ahorow no bɔɔ ho dawuru no, "
                            "ɛnam Ne so na nokware bɛda adi pefee afi atoro ho, na yɛbɛsan asɔ Nyansa nyinaa ahwɛ. Nokware, "
                                      "Ɔyɛ Nkwa Dua a Ɔsow Onyame, Nea Ɔkorɔn, Otumfo no, Ɔkɛse No aba no.\n",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans", ),
                                    textAlign: TextAlign.start,  ),
                                ),
                              ],
                            ),
                            // Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("O Ahmad! Di adanse sɛ, nokware Ɔyɛ Onyame na Onyame bi nni hɔ ka Ne ho, Ɔhene, Ɔbanbɔfo, "
                            "Onni sɛso na Ɔyɛ Otumfo. Na Nea Ɔsomaa No a wɔfrɛ no Ali (Bàb) no yɛ Ɔnokwafo a ofi Nyame hɔ, "
                                      "na Ne mmara na yɛn nyinaa di so.\n",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans", ),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Ka se: O nnipa, monni Onyankopɔn mmara so, sɛnea Onuonyamni Nyansafo no ahyehyɛ wɔ "
                            "Bayan no mu no. Nokware Ɔyɛ Asomafo no mu Hene na ne Nwoma no yɛ kyerɛwsɛm no mu Nwoma kɛse paa ara, "
                                      "sɛ monim a.\n",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans",  ),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Eyi nti “Anomaa” (Ɔbɔfo), no bɔm ma Ne nne nnyegye, Ne frɛ no nteam no fi afiase ha. Onni "
                            "hwee ka sɛ saa asɛm yi na ɔde rema wo. Obiara a ɔpɛ no, ma no ntwe ne ho mfi saa afotusɛm yi ho, "
                                      "na obiara nso a ɔpɛ no ɔmfa n'ankasa kwan so nkɔ n'Awurade hɔ.\n",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("O nnipa, sɛ mopow saa nsɛm yi a, dɛn na mobɛgyina so de akyerɛ sɛ mogye Onyame di? Monna no adi, "
                            "O atorɔfo dɔm a moahyia mu. Daabi, meka Nea me kra hyɛ Ne nsam! Wɔrenntumi da, sɛ mpo wɔboa, keka wɔn "
                                      "ho bobom boaboa wɔn ho ano mpo a, wɔrenntumi nyɛ ɛyi da.\n",
                                    style:  TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,  ),
                                ),
                              ],
                            ),
                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("O Ahmad! Bere a Menni hɔ yi, mma wo werɛ mfi M'adom. Kae Me nna, M'abrabɔ wɔ wo bere so, na kae "
                                "M'amanehunu ne M'asutwa de bɛdu afiase ha, akyirikyiri yi. Ma Me ho dɔ nsi pi wɔ wo mu na mma wo koma "
                                      "nhinhim, sɛ mpo atamfo de mpeaw gu wo so na ɔsoro ne asase sɔre ko tia wo.\n",
                                    style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,  ),
                                ),
                              ],
                            ),
                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mfa wo ho mmɔ wɔn a wɔgye saa asɛm yi ho akyinnye, na mmom yɛ sɛ Ogyatanaa wɔ M'atamfonom so, "
                                      "na M'adɔfo de yɛ sɛ daa nkwa asuten ma wɔn.\n",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Na sɛ ɔhaw fa wo nnomum wɔ M'akwan mu, anaa Me nti w'anim gu ase a, mma ɛnhaw wo.\n",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                            // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Fa wo ho to Onyame, wo Nyankopɔn ne w'agyanom Awurade no so. Ɛfisɛ nipa haahaa, fom "
                            "akwantenenee no, adwenepa apare wɔn ma wɔpɛ sɛ wɔde wɔn ani hu Onyankopɔn, na wɔde wɔn ankasa aso "
                            "te Ne nne. Saa ara na Yɛahu wɔn, sɛnea wodi ho adanse no. Saa nti wɔn gyidihunu no abɛyɛ nkatanim "
                                      "ama wɔn ne wɔn ankasa akoma, na atwe wɔn afi Onyame, Nea Ɔkorɔn no, Ɔkɛse no kwan no so.\n",
                                    style:  TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Nya awerɛhyɛm sɛ, nokware obiara a ɔtwe ne ho fi saa Ahoɔfɛ yi ho no atwe ne ho afi Asomafo a "
                                      "wodii kan no ho na wɔakyerɛ aniamɔwoho su akyerɛ Onyankopɔn fi tete kosi daapem.\n",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),

                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("O Ahmad, sua saa mpae yi yiye. Bere a wote ase yi tow saa nnwom yi bere biara, na ntwe "
                            "wo ho mfi ho. Ɛfisɛ, nokware ni, Onyankopɔn ahyɛ se, Obiara a"
                                      " “Ɔbɛtow” no bɛnya mfaso a Ɔsom yi"
                            "mu mogya-adansefo ɔha bɛnya, na wasom wɔ wiase ahorow abien no mu. Eyi ne akyɛde a ɛfi Yɛn pɛ mu "
                            "yɛde ma wo, na ɛyɛ ahummɔbɔ a ɛfi Yɛn nkyɛn de rema wo, sɛ ɛbɛyɛ a wobɛka wɔn a wɔhu na wɔda ase no ho. "
                                      "Meka Onyankopɔn! Sɛ obiara a ɔwɔ ahokyere ne awerɛhow mu, de nokware a ɛsi pi bɔ saa Mpae yi a, "
                                      "Onyankopɔn bɛyi n'awerɛhow, bɛsi ne haw ano na wapopa n'ahokyere nyinaa.\n",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),height: 1.40, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),

                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Nokware, Ɔyɛ Adom Hene ne Mmɔborɔhunufo. Nkamfo nka Onyame, Wiase nyinaa Awurade.\n",
                                    style:  TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0),height: 1.40,  fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,  ),
                                ),
                              ],
                            ),

                           // Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), fontWeight: FontWeight.bold,
                                        fontFamily: "NotoSans"),
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