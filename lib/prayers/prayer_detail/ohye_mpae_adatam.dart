import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class OhyeMpaeAdatam extends StatefulWidget {
  @override
  _OhyeMpaeAdatamState createState() => _OhyeMpaeAdatamState();
}

class _OhyeMpaeAdatamState extends State<OhyeMpaeAdatam> {
  final AssetsAudioPlayer _assetsAudioPlayer= AssetsAudioPlayer();
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
                child: GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                        ShareExtend.share("ƆHYƐ MPAE ADATAM\n\n"
                            "Ɛwɔ sɛ wɔbɔ saa mpea yi dabiara anɔpa, owigyinae ne anwummere.\n\n"
                            "Obiara a ɔpɛ sɛ ɔbɔ mpae yi no bɛhohoro ne nsa. Bere a ɔgu so rehohoro no ɔnka se:\n\n"
                            "Hyɛ me nsa mu den, O me Nyankopɔn sɛnea ɛbɛtumi asɔ Wo Nwoma no mu pintinn, na wim atumfo "
                            "annya so tumi. San bɔ ho ban na ankɔsɔ nea ɛnyɛ ne de mu. Nokware ni, Woyɛ Okokuroko, Woyɛ Tumi Wura.\n\n"

                            "Bere a ɔrehohoro n'anim no ɔnka se:\n\n"
                            "Madan m'ani ahwɛ Wo, O m'Awurade! Ma W'anim hann no nhyerɛn wɔ so. "
                            "Bɔ ho ban na annan amfi Wo so ankɔhwɛ obi foforo biara.\n\n"

                            "Afi ɔnsɔre nnyinaa hɔ, mfa n'ani nkyerɛ beae a Bahá'u'lláh Amu da no "
                            "(Ayeyi Beae hɔ…..Qiblih….. mekyerɛ Bahji Akká) na ɔnka se:\n\n"

                            "Onyankopɔn ma ɛda adi pefee sɛ Nyame foforo biara nni hɔ ka Ne ho. Ahenni mu Adiyisɛm ne "
                            "abɔde nyinaa yɛ Ne dea. Nokwarem, Ɔno na Wada Adiyisɛm Asuten no adi Nea ɔbɔɔ  nkɔmmɔ wɔ Sinai, "
                            "na ɛnam Ne so ɔsorosoro Hann no atumi ahyerɛn, na Lote- Dua no a Wɔkwati  no a (wɔpa ho a) ɛnyɛ "
                            "yiye no akasa, na ɛnam Ne  so wɔapae mu afrɛ wɔn a wɔwɔ ɔsoro ne asase nyinaa so se: "
                            "“Hwɛ, Nea Ade Nyinaa yɛ Ne Dea no aba. Asase ne Ɔsoro, anuonyam ne tumi yɛ Nyankopɔn amansan nyinaa Awurade no, Nea Ɔsoro ne asase so ahenni yɛ ne de no!”\n\n"

                            "Afei, ɔmmɔ ne mu ase mfa ne nsa ngu ne kotodwe so, nka se:\n\n"

                            "Wo kɛseyɛ korɔn sen ayeyi a me ne afoforo a wɔka me ho de ma wo, ɛboro me nkyerɛkyerɛmu ne nea "
                            "wɔn a wɔwɔ ɔsoro ne asase so nyinaa bɛka afa Wo ho!\n\n"

                            "Afei, ɔnsɔre nnyina hɔ, ntrɛw ne nsam nkyerɛ n'anim wɔ ɔsoro na ɔnka se:\n\n"

                            "O me Nyankopɔn, nni nea ɔde nkotosrɛ asɔ W'adom ne W'ahummɔbɔ ano mu resrɛ Wo hɔ ade no hwammɔ O, "
                            "Wo a wowɔ ahummɔbɔ sen ahummɔbɔfo nyinaa!\n\n"

                            "Afei ɔntena  ase, na ɔnka se:\n\n"

                            "Medi Wo nkabom ne Wo koroyɛ ho adanse sɛ Wo ne Nyankopɔn na nyame foforo biara nni hɔ ka wo ho.\n\n"

                            "Nokware ni Woada W'asem adi, adi W'apam no adi no ho nokware, (Wahyɛ W'apam, no ma) abue "
                            "W'adom pon no tɛtrɛɛ ato hɔ ama wɔn a wɔwɔ ɔsoro ne asase so nyinaa.\n\n"

                            "Nhyira ne asomdwoe, nkyia ne anuonyam nka W'adɔfonom; wɔn a wiase nsakrae ne apɛde nsii wɔn "
                            "kwan sɛ wɔbɛdan wɔn akyi akyerɛ Wo, na wɔama biribiara apare wɔn ɛfisɛ  wɔwɔ anidaso sɛ wɔn nsa bɛka "
                            "Wo mu nnepa no. Nokware ni, Wo ne Daa Bɔnefafiri, Wo a wo Nsam gow.\n\n"

                            "Sɛ obi mpɛ sɛ ɔka nsɛm tenten yi a ɔnka eyi;\n\n"

                            "Nyankopɔn ma ɛda adi pefee sɛ Nyame foforo bi nni hɔ ka Ne ho, Ahohia bere mu Boafo, Nea ɔnnan obi. Saa ara na bere a ɔte hɔ no ɔtumi ka se: Medi Wo nkabom ne Wo koroyɛ ho adanse sɛ Wo nko "
                            "ara ne Nyankopɔn, na Nyame foforo biara nni hɔ ka Wo ho.\n\n"
                            "Bahá'u'lláh\n\n"
                            "Onyame Nkae", "text", sharePanelTitle: "Ɔhyɛ Mpae", subject: "Twi Prayers");
                    },
                    )
                  ],
                ), preferredSize: Size.fromHeight(50.0),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  child: GradientAppBar(title: Text("Ɔhyɛ Mpae", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/OhyeMpae_Adatam.mp3"));
                          _assetsAudioPlayer.play();
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: ()
                      {
                        _assetsAudioPlayer.stop();
                      },)
                    ],
                    centerTitle: true,


                  ), preferredSize: Size.fromHeight(40.0),
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

                                  child: Text("ƆHYƐ MPAE ADATAM",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontWeight: FontWeight.bold, fontFamily: "NotoSerif"),
                                    textAlign: TextAlign.center,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Ɛwɔ sɛ wɔbɔ saa mpea yi dabiara anɔpa, owigyinae ne anwummere.",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontStyle: FontStyle.italic, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Obiara a ɔpɛ sɛ ɔbɔ mpae yi no bɛhohoro ne nsa. Bere a ɔgu so rehohoro no ɔnka se:",
                                    style:  TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), height: 1.40,
                                        fontStyle: FontStyle.italic, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,  ),
                                )
                              ],
                            ),
                            Divider(height: 20, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: DropCapText("Hyɛ me nsa mu den, O me Nyankopɔn sɛnea ɛbɛtumi asɔ Wo Nwoma no mu pintinn, na wim atumfo "
                                      "annya so tumi. San bɔ ho ban na ankɔsɔ nea ɛnyɛ ne de mu. Nokware ni, Woyɛ Okokuroko, Woyɛ Tumi Wura.\n"

                                    ,
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

                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Bere a ɔrehohoro n'anim no ɔnka se:\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Madan m'ani ahwɛ Wo, O m'Awurade! Ma W'anim hann no nhyerɛn wɔ so. "
                                      "Bɔ ho ban na annan amfi Wo so ankɔhwɛ obi foforo biara.\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Afi ɔnsɔre nnyinaa hɔ, mfa n'ani nkyerɛ beae a Bahá'u'lláh Amu da no "
                                      "(Ayeyi Beae hɔ…..Qiblih….. mekyerɛ Bahji Akká) na ɔnka se :\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text( "Onyankopɔn ma ɛda adi pefee sɛ Nyame foforo biara nni hɔ ka Ne ho. Ahenni mu Adiyisɛm ne "
                                      "abɔde nyinaa yɛ Ne dea. Nokwarem, Ɔno na Wada Adiyisɛm Asuten no adi Nea ɔbɔɔ  nkɔmmɔ wɔ Sinai, "
                                      "na ɛnam Ne so ɔsorosoro Hann no atumi ahyerɛn, na Lote- Dua no a Wɔkwati  no a (wɔpa ho a) ɛnyɛ "
                                      "yiye no akasa, na ɛnam Ne  so wɔapae mu afrɛ wɔn a wɔwɔ ɔsoro ne asase nyinaa so se: "
                                      "“Hwɛ, Nea Ade Nyinaa yɛ Ne Dea no aba. Asase ne Ɔsoro, anuonyam ne tumi yɛ Nyankopɔn amansan "
                                      "nyinaa Awurade no, Nea Ɔsoro ne asase so ahenni yɛ ne de no!”\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Afei, ɔmmɔ ne mu ase mfa ne nsa ngu ne kotodwe so, nka se:\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Wo kɛseyɛ korɔn sen ayeyi a me ne afoforo a wɔka me ho de ma wo, ɛboro me nkyerɛkyerɛmu ne nea "
                                      "wɔn a wɔwɔ ɔsoro ne asase so nyinaa bɛka afa Wo ho!\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Afei, ɔnsɔre nnyina hɔ, ntrɛw ne nsam nkyerɛ n'anim wɔ ɔsoro na ɔnka se:\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("O me Nyankopɔn, nni nea ɔde nkotosrɛ asɔ W'adom ne W'ahummɔbɔ ano mu resrɛ Wo hɔ ade no hwammɔ O, "
                                  "Wo a wowɔ ahummɔbɔ sen ahummɔbɔfo nyinaa!\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Afei ɔntena  ase, na ɔnka se:\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Medi Wo nkabom ne Wo koroyɛ ho adanse sɛ Wo ne Nyankopɔn na nyame foforo biara nni hɔ ka wo ho.\n\n"

                                      "Nokware ni Woada W'asem adi, adi W'apam no adi no ho nokware, (Wahyɛ W'apam, no ma) abue "
                                      "W'adom pon no tɛtrɛɛ ato hɔ ama wɔn a wɔwɔ ɔsoro ne asase so nyinaa.\n\n"

                                      "Nhyira ne asomdwoe, nkyia ne anuonyam nka W'adɔfonom; wɔn a wiase nsakrae ne apɛde nsii wɔn "
                                      "kwan sɛ wɔbɛdan wɔn akyi akyerɛ Wo, na wɔama biribiara apare wɔn ɛfisɛ  wɔwɔ anidaso sɛ wɔn nsa bɛka "
                                      "Wo mu nnepa no. Nokware ni, Wo ne Daa Bɔnefafiri, Wo a wo Nsam gow.\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Sɛ obi mpɛ sɛ ɔka nsɛm tenten yi a ɔnka eyi;\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("Nyankopɔn ma ɛda adi pefee sɛ Nyame foforo bi nni hɔ ka Ne ho, Ahohia bere mu Boafo, Nea ɔnnan obi. Saa ara na bere a ɔte hɔ no ɔtumi ka se: Medi Wo nkabom ne Wo koroyɛ ho adanse sɛ Wo nko "
                                      "ara ne Nyankopɔn, na Nyame foforo biara nni hɔ ka Wo ho.\n\n", style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40),),
                                )
                              ],
                            ),


                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", fontWeight: FontWeight.bold),
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