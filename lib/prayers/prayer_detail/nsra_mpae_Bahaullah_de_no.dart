import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:share_extend/share_extend.dart';

class NsraMpaeBahaullahDeNo extends StatefulWidget {
  @override
  _NsraMpaeBahaullahDeNoState createState() => _NsraMpaeBahaullahDeNoState();
}

class _NsraMpaeBahaullahDeNoState extends State<NsraMpaeBahaullahDeNo> {
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
                    IconButton(icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                      ShareExtend.share("NSRA MPAE (BAHÁ'U'LLÁH DE NO)\n\n"
                          "Nkamfo a ɛfi Woankasa hɔ, ne anuonyam a ahyerɛn fi Wo Ahoɔfɛ mmoroso no nyɛ Wo dea daa, "
                          "O Wo a Woda Kɛseyɛ adi na Woyɛ Mmeresanten Hene, ɔsoro ne asasesofo nyinaa Awurade! Medi adanse "
                          "sɛ ɛnam Wo so na Onyankopɔn ahenni, N'ahemmann, Ne kokurokoyɛ ne Ne kɛseyɛ da adi; na Adekyee Nsromma "
                          "hann a ɛfi tete na atow wɔn hyerɛn no afi Wo soro mmara a ɛnsesa da no mu, ne Nea wɔnhu No no Ahoɔfɛ no "
                          "hran fi abɔde ahyiae atifi hɔ.\n\n"

                          "Medi adanse bio sɛ, fi Wo kyerɛwdua ano no Wo hyɛ a ɛse: Yɛ Hɔ no aba mu na Onyankopɔn Ahintasɛm "
                          "(Asumasɛm) a sie no nso ada adi ama abɔde nyinaa adan abɔde foforo na Adiyisɛm no nyinaa asian aba fam.\n\n"

                          "Ɛyɛ akyi bio, medi adanse sɛ ɛnam Woahoɔfɛ so Nkamfo Wura no ahoɔfɛ no nso ada adi, ɛnam Woanum "
                          "asɛm baako pɛ so nsonsonoe aba abɔde nyinaa mu ama wɔn a wɔsom Wo nokware mu no aforo akodu anuonyam "
                          "bepɔw no atifi, ɛna wɔn a wɔnnye nni no ahwe ase akɔtɔ bun mu, ase koraa.\n\n"

                          "Medi adanse bio sɛ, nea wahu Wo no ahu Nyankopɔn, na nea wadu Woanim no adu Nyankopɔn anim. "
                          "Ɛyi nti, nhyira kɛse nka nea wagye Wo ne wo nsɛnkyerɛnne adi na wabrɛ ne ho ase ahyɛ Woahenni ase na "
                          "wanya kwan sɛ ohyia Wo, na n'ani asɔ Wo pɛ, na watwa Wo ho ahyia abɛgyina W'ahennwa no anim. Nnome nka "
                          "nea wafom Wo na wapow Wo na wannye Wo nsɛnkyerɛnne no anni, wakasa atia Wo tumi, asɔre atia Wo, ma ne ho so wɔ W'anim, "
                          "agye akyinnye Woasɛm ho, waguan afi W'ahenni ne Wo tumi ase, na wɔakan no afra "
                          "akyinnyegyefo a Woankasa de nsa akyerɛw wɔn din wɔ Wo Nwoma kronkron no mu.\n\n"

                          "O me Nyankopɔn ne me Dɔfo, saa de a, fi W'ahummɔbɔ nsa nifa so ne Wo dɔ-ayamye mu ma W'adɔe ho "
                          "mframa kronkron no mmɔ mfa me so ntwe me mfi m'ankasa ho ne wiase mmɛn W'atenae ne W'anim hɔ.\n\n"

                          "Wowɔ tumi sɛ Woyɛ nea Wopɛ. Nokwarem Wo korɔn wɔ ade nyinaa so.\n\n"

                          "Onyame nkae, N'ayeyi ne Onyankopɔn anuonyam ne Ne hran (fɛyɛ) nyɛ Wo dea, O Wo a woyɛ N'Ahoɔfɛ! "
                          "Medi adanse sɛ abɔde biara aniwa nhuu obi a wɔafom no sɛ Wo da. Wo nkwa nna nyinaa mu no wɔde Wo nuu "
                          "ateetee nsu mu.\n\n"

                          "Bere bi wɔde Wotoo nkɔnsɔnkɔnsɔn ne mpokyere mu; bere foforo nso no W'atamfo de peaw hunahunaa Wo. "
                          "Nanso eyinom nyinaa akyi no, Wohyɛɛ adasa nyinaa sɛ wɔnni nhyehyɛe a Nea ɔyɛ Ohintahu ne Nyansa Wura no "
                          "ahyehyɛ ama Wo no so.\n\n"

                          "Ma me sunsum nyɛ afɔre mma ɔhaw a Wofaa mu no na me kra ntua asane a ɛtoo Wo no ho ka. "
                          "Menam Wo ne wɔn a wɔn anim hyerɛn fi hann a ɛfi  Woanim hran no ne wɔn a Wo ho dɔ nti wɔdii "
                          "W'ahyɛde nyinaa so no, kotow srɛ Nyankopɔn sɛ, yi nkatanim a asi Wo ne Woabɔde ntam fi hɔ, na "
                          "ma me wiase yi mu ne nea ɛbɛba no mu nnepa bi\n\n"

                          "Nokware ni, Wo ne Otumfo no, Nea Ɔkorɔn sen ade nyinaa no, Tete Bɔne fafri, "
                          "Nea Ɔyɛ Ahummɔbɔ mu Ahummɔbɔ.\n\n"

                          "O Awurade me Nyankopɔn, hyira Lote Dua (Dua a wɔnkwati) no ne ne nhaban, ne mman, ne ne nnuabaa no "
                          "ne ne nnutan no, n'afifide nketewa a afefɛw ho no mmeresanten a W'abɔdin a ɛso nni no ne Wo su a ɛkorɔn no tim hɔ daa.\n\n"

                          "Afei bɔ ho ban fi atuatefo ne atimuɔdenfo dɔm amumɔyɛ ho.\n\n"

                          "Nokware, Wo na Wo nsam gow, na W'adom wɔ hɔ daa. Nyame foforo biara nni hɔ ka Wo ho, Tete Bɔnefafiri, Ayamye Mmoroso no\n\n"

                          "Bahá'u'lláh\n\n\n"

                          "Onyame Nkae", "text",  sharePanelTitle: "Nsra Mpae", subject: "Twi Prayers");
                    },)
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
                          _assetsAudioPlayer.open(Audio("audios/NsraMpae_Bahaullah_ne_Bab_de_no.mp3"));
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

                                  child: Text("(Wɔka saa Adanse Bopon yi wɔ Bahá'u'lláh ne Báb Korabea (Asiei) no. Afei nso wɔkan saa mpae yi Wɔn "
                                      "afehyia nkaeda biara)",
                                    style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), height: 1.40, fontStyle: FontStyle.italic, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.center,   ),
                                ),
                              ],
                            ),

                            Divider(height: 20, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: DropCapText("Nkamfo a ɛfi Woankasa hɔ, ne anuonyam a ahyerɛn fi Wo Ahoɔfɛ mmoroso no nyɛ Wo dea daa, "
                            "O Wo a Woda Kɛseyɛ adi na Woyɛ Mmeresanten Hene, ɔsoro ne asasesofo nyinaa Awurade! Medi adanse "
                            "sɛ ɛnam Wo so na Onyankopɔn ahenni, N'ahemmann, Ne kokurokoyɛ ne Ne kɛseyɛ da adi; na Adekyee Nsromma "
                            "hann a ɛfi tete na atow wɔn hyerɛn no afi Wo soro mmara a ɛnsesa da no mu, ne Nea wɔnhu No no Ahoɔfɛ no "
                                      "hran fi abɔde ahyiae atifi hɔ.\n\n"

                                      "Medi adanse bio sɛ, fi Wo kyerɛwdua ano no Wo hyɛ a ɛse: Yɛ Hɔ no aba mu na Onyankopɔn Ahintasɛm "
                                      "(Asumasɛm) a sie no nso ada adi ama abɔde nyinaa adan abɔde foforo na Adiyisɛm no nyinaa asian aba fam.\n\n"

                                      "Ɛyɛ akyi bio, medi adanse sɛ ɛnam Woahoɔfɛ so Nkamfo Wura no ahoɔfɛ no nso ada adi, ɛnam Woanum "
                                      "asɛm baako pɛ so nsonsonoe aba abɔde nyinaa mu ama wɔn a wɔsom Wo nokware mu no aforo akodu anuonyam "
                                      "bepɔw no atifi, ɛna wɔn a wɔnnye nni no ahwe ase akɔtɔ bun mu, ase koraa.\n\n"

                                      "Medi adanse bio sɛ, nea wahu Wo no ahu Nyankopɔn, na nea wadu Woanim no adu Nyankopɔn anim. "
                                    "Ɛyi nti, nhyira kɛse nka nea wagye Wo ne wo nsɛnkyerɛnne adi na wabrɛ ne ho ase ahyɛ Woahenni ase na "
                                    "wanya kwan sɛ ohyia Wo, na n'ani asɔ Wo pɛ, na watwa Wo ho ahyia abɛgyina W'ahennwa no anim. Nnome nka "
                                    "nea wafom Wo na wapow Wo na wannye Wo nsɛnkyerɛnne no anni, wakasa atia Wo tumi, asɔre atia Wo, ma ne ho so wɔ W'anim, "
                                    "agye akyinnye Woasɛm ho, waguan afi W'ahenni ne Wo tumi ase, na wɔakan no afra "
                                    "akyinnyegyefo a Woankasa de nsa akyerɛw wɔn din wɔ Wo Nwoma kronkron no mu.\n\n"

                                      "O me Nyankopɔn ne me Dɔfo, saa de a, fi W'ahummɔbɔ nsa nifa so ne Wo dɔ-ayamye mu ma W'adɔe ho "
                                      "mframa kronkron no mmɔ mfa me so ntwe me mfi m'ankasa ho ne wiase mmɛn W'atenae ne W'anim hɔ.\n\n"

                                      "Wowɔ tumi sɛ Woyɛ nea Wopɛ. Nokwarem Wo korɔn wɔ ade nyinaa so.\n\n"

                                      "Onyame nkae, N'ayeyi ne Onyankopɔn anuonyam ne Ne hran (fɛyɛ) nyɛ Wo dea, O Wo a woyɛ N'Ahoɔfɛ! "
                                      "Medi adanse sɛ abɔde biara aniwa nhuu obi a wɔafom no sɛ Wo da. Wo nkwa nna nyinaa mu no wɔde Wo nuu "
                                      "ateetee nsu mu.\n\n"

                                      "Bere bi wɔde Wotoo nkɔnsɔnkɔnsɔn ne mpokyere mu; bere foforo nso no W'atamfo de peaw hunahunaa Wo. "
                                      "Nanso eyinom nyinaa akyi no, Wohyɛɛ adasa nyinaa sɛ wɔnni nhyehyɛe a Nea ɔyɛ Ohintahu ne Nyansa Wura no "
                                      "ahyehyɛ ama Wo no so.\n\n"

                                      "Ma me sunsum nyɛ afɔre mma ɔhaw a Wofaa mu no na me kra ntua asane a ɛtoo Wo no ho ka. "
                                      "Menam Wo ne wɔn a wɔn anim hyerɛn fi hann a ɛfi  Woanim hran no ne wɔn a Wo ho dɔ nti wɔdii "
                                      "W'ahyɛde nyinaa so no, kotow srɛ Nyankopɔn sɛ, yi nkatanim a asi Wo ne Woabɔde ntam fi hɔ, na "
                                      "ma me wiase yi mu ne nea ɛbɛba no mu nnepa bi\n\n"

                                      "Nokware ni, Wo ne Otumfo no, Nea Ɔkorɔn sen ade nyinaa no, Tete Bɔne fafri, "
                                      "Nea Ɔyɛ Ahummɔbɔ mu Ahummɔbɔ.\n\n"

                                      "O Awurade me Nyankopɔn, hyira Lote Dua (Dua a wɔnkwati) no ne ne nhaban, ne mman, ne ne nnuabaa no "
                                      "ne ne nnutan no, n'afifide nketewa a afefɛw ho no mmeresanten a W'abɔdin a ɛso nni no ne Wo su a ɛkorɔn no tim hɔ daa.\n\n"

                                      "Afei bɔ ho ban fi atuatefo ne atimuɔdenfo dɔm amumɔyɛ ho.\n\n"

                                      "Nokware, Wo na Wo nsam gow, na W'adom wɔ hɔ daa. Nyame foforo biara nni hɔ ka Wo ho, Tete Bɔnefafiri, Ayamye Mmoroso no."

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

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Medi adanse bio sɛ, fi Wo kyerɛwdua ano no Wo hyɛ a ɛse: Yɛ Hɔ no aba mu na Onyankopɔn Ahintasɛm "
                                      "(Asumasɛm) a sie no nso ada adi ama abɔde nyinaa adan abɔde foforo na Adiyisɛm no nyinaa asian aba fam.",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), height: 1.40, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start,   ),
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
                                        fontFamily: "NotoSans", fontWeight: FontWeight.bold),
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