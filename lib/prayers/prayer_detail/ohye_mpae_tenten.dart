import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class OhyeMpaeTenten extends StatefulWidget {
  @override
  _OhyeMpaeTentenState createState() => _OhyeMpaeTentenState();
}

class _OhyeMpaeTentenState extends State<OhyeMpaeTenten> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  double _prevScale;
  double _scale;

  @override
  void initState() {
    super.initState();
    _prevScale = _scale = 1.0;
  }

  @override
  void dispose() {
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
              centerTitle: true, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share, size: 30.0,), onPressed: (){
                    ShareExtend.share("ƆHYƐ MPAE TENTEN\n\n"
                        "Nnɔnhwere aduonu-anan biara ntam no, bɔ Saa mpae yi prɛko pɛ.\n\n"
                        "Obiara a ɔpɛ sɛ ɔbɔ saa mpae yi no nsɔre nnyina hɔ, nnan n'ani nkyerɛ Nyankopɔn, "
                        "na ɔgyina hɔ saa no, ɔnhwɛ nifa, Na afei benkum, te sɛnea ɔretwɛn n'Awurade ahummɔbɔ, "
                        "Nea Ɔyɛ Mmɔborɔhunufo no, Ɔtema no.\n\n"

                        "O Wo a Woyɛ din nyinaa Wura ne ɔsorosoro Yɛfo! Menam wɔn a wɔyɛ Adekyee ma Wo Tebea wɔnnhu no, "
                        "Wo a wo Korɔn sen biribiara, Anuonyam nyinaa Wura no so kotow srɛ Wo sɛ ma me mpae nyɛ ogya a ɛbɛhye "
                        "nkatanim a ɛmma menhu W'ahoɔfɛ no, na ɛnyɛ hann a ɛbɛdi m'anim de me aba W'Anim tɛtrɛɛ te sɛ Po no.\n\n"

                        "Afei ɔmma ne nsa so wɔ ahobrɛase mu nkyerɛ Nyankopɔn- nhyira ne ayeyi nka No-na ɔnka se:\n\n"

                        "O Wo a woyɛ wiasefo Apɛde ne amanaman Dɔfo! Wohu sɛ madan m'ani rehwɛ Wo, na mapa me ho akyi "
                        "afi biribiara ho gye Wo nkutoo na masɔ W'ahama a ɛho mpopoe awosow abɔde nyinaa no mu. Meyɛ W'akoa, "
                        "O m'Awurade ne W'akoa ba. Hwɛ me megyina hɔ ayɛ krado sɛ mɛyɛ W'apɛde ne nea Wohwehwɛ, na magyae "
                        "biribiara akyi di gye sɛ nea ɛsɔ W'ani nkutoo. Menam W'ahummɔbɔ Po no ne Wo adom Adekyee-Nsoromma no so kotow "
                        "srɛ Wo sɛ fa W'akoa yɛ nea Wopɛ ne nea eye ma Wo, ɛsane Wo tumi a ɛnni kabea ne ayeyi nti! Biribiara a Wobɛda"
                        " no adi no yɛ nea m'akoma pɛ ne nea me kra pere hwehwɛ. O Nyankopɔn, me Nyankopɔn, nhwɛ m'anidaso ne me nneyɛe, "
                        "na mmom hwɛ Wo pɛ a abunkam afa ɔsoro ne asase so. Wɔ Wo Din Kokuroko no nti, "
                        "O Wo a woyɛ amanaman nyinaa Awurade! mapere hwehwɛ nea Wo pɛ nko ara na medɔ nea W'ani gye ho nkutoo.\n\n"

                        "Afei ɔmmu nkotodwe na ɔmfa ne moma mmɔ fam na ɔnka se:\n\n"

                        "Wo kɛseyɛ korɔn sen nkyerɛkyerɛmu ne ntease a obiara wɔ fa Wo ho gye Wo ankasa.\n\n"

                        "Afei, ɔnsɔre nnyina hɔ na ɔnka se:\n\n"

                        "O m'Awurade, ma me mpae nyɛ sɛ nkwa nsuten (nsu a ɛto see) na matɛna afebɔɔ (ama manyin akyɛ) "
                        "sɛnea W'ahenni tim hɔ daa ara pɛ, na mabɔ Wo Din wɔ Wo wiase ahorow no mu.\n\n"

                        "Afei ɔnsan mpagyaw ne nsa wɔ ahobrɛease mu nka se:\n\n"

                        "O, Wo a sɛ obi tew ne ho fi Wo ho a akoma ne akra nane na ɛnam Wo dɔ a ɛte sɛ ogya no atɔ "
                        "wiase redɛre framfram! Mekotow srɛ Wo wɔ Wo Din a wonam so abrɛ wiase nyinaa ase no sɛ, mfa nea "
                        "Wowɔ no nkame me, O Wo a wodi hene wɔ adasamma nyinaa so.\n\n"

                        "O m'Awurade, Wohu saa ɔhɔho (ɔmanfrani) yi a ɔde ahopere rekɔ n'atenae a ɛkorɔn wɔ "
                        "W'ahenni pata no ase na ɛwɔ W'ahummɔbɔ ahye so no; nea wafom yi rehwehwɛ Wo bɔnefafiri po no, "
                        "saa mmɔbrɔwa yi, W'anuonyam atenae, saa ohiani yi W'ahonya ti.\n\n"

                        "Wowɔ tumi sɛ Woma nea Wopɛ biara ba mu.  Medi adanse sɛ ɛsɛ sɛ wɔyi Woayɛ wɔ Wo nnwuma nyinaa ho, "
                        "na wɔdi nea Wohyɛ so, na biribiara nsi Wo pɛ ho kwan.\n\n"

                        "Afei ɔmma ne nsa so, na ɔmmɔ Din Kɛse mpɛn abiɛsa.\n\n"

                        "Afei ɔmmɔ ne mu ase mfa ne nsa nsosɔ ne kotodwe wɔ Nyankopɔn anim – nhyira ne ayeyi nka "
                        "No-na ɔnka se:\n\n"

                        "Wohu, O me Nyankopɔn, sɛnea me sunsum apusuw m'akwaa ne me nipadua ɛsane pɛ a ɛpɛ sɛ ɛsom Wo, "
                        "sɛnea ɛrepere sɛ ɛbɛkae atomtom Wo; sɛnea ɛdi adanse fa nea Wo Mmaransɛm Tɛkrɛma no dii ho adanse wɔ "
                        "W'asɛm ahenni ne Wo nimdee ahemman mu. Wɔ saa tebea yi mu mpo, O m'Awurade, medɔ sɛ mekotow asrɛ Wo "
                        "mu nnepa nyinaa, sɛnea ɛbeyɛ a mɛda me hia adi na mama W'adom ne W'ahonya ayɛ kɛse, me mmerɛwyɛ ho ada "
                        "hɔ na ama W'ahoɔden ne Wo tumi ada adi.\n\n"

                        "Afei ɔnsɔre nnyina hɔ mma ne nsa so mpɛn abien wɔ ahobrɛase mu nka se:\n\n"

                        "Nyame foforɔ biara nni hɔ ka Wo ho, Otumfo, Wo a wo nsam gow. Nyame foforo biara nni hɔ ka Wo ho, "
                        "Wo a woma ɛyɛ hɔ fi mfiase kɔsi awiei.\n\n"

                        "O Nyankopɔn, me Nyankopɔn! Wo fafri ama me akokuduru, na W'ahummɔbɔ ama m'ahoɔden, "
                        "Wo frɛ no akanyan me na W'adom no apagyaw me de me aba nkyɛn, Hena koraa ne me a anka mɛtwiw "
                        "abɛgyina Wo nkyɛn, Wo kuropɔn no aboboano, anaa mede m'ani bɛto Wo akanea a ɛrehyerɛn afi sorosoro "
                        "Wo pɛ mu no?  O m'Awurade, Wohu ɔwerɛhowni yi sɛ ɔrebɔ W'adom pon no mu ne ɔkra a wɔatow no asaworam yi "
                        "sɛ ɔrepere hwehwɛ daa nkwa nsuten a ɛfi W'adom nsam no. Wo na wohyɛ a ɛyɛ hɔ bere biara, O Wo a Woyɛ "
                        "din nyinaa Wura; na mede ne sɛ mɛgye Wo pɛ ato mu, O Ɔsorosoro yɛfo!\n\n"

                        "Afei ɔmma ne nsa so mpɛn abiɛsa nka se:\n\n"

                        "Onyankopɔn yɛ kɛse kyɛn ɔkɛse biara!\n\n"

                        "Afei ɔmmu nkotodwe, mfa ne moma mmɔ fam nka se:\n\n"

                        "Wo kɛseyɛ nti no, wɔn a wɔbɛn Wo no ayeyi ntumi nnuru Wo nkyɛn wɔ nokware mu na abɛn W'abobowano. "
                        "Megye to mu sɛ wɔatew Wo ho sen ade nyinaa na Wo kronkronyɛ boro din nyinaa so. Onyame foforo bi nni hɔ "
                        "ka Wo ho, Okokuroko, Anuonyam nyinaa Ti.\n\n"

                        "Afei ɔntena ase na ɔnka se:\n\n"

                        "Medi adanse fa nea abɔde nyinaa ne ɔsoro Ahoteefo ne paradise Kronkrobea Mufo no, wɔn akyi no "
                        "Tɛkrɛma Kɛse no ankasa a ɛfi anuonyam nyinaa Ahyiaeso no, sɛ Wo yɛ Nyankopɔn, na nyame foforo biara "
                        "nni hɔ ka Wo ho, na nea wɔada no adi no yɛ Ahintasɛm Anwonwade nsɛnkyerɛnne a ɛsom bo, na ɛnam Ne so "
                        "na wɔaka akyerɛwsɛm Yɛ - Hɔ anwon abom.\n\n"

                        "Megye to mu sɛ Ɔno ne Din na Ɔsorosoro Hene de kyerɛwdua si so dua, na Ɔno na wɔabɔ ne din wɔ "
                        "Nyankopɔn Nwoma no mu no, Awurade a ɔte Ahennwa so wɔ ɔsoro ne fam.\n\n"

                        "Afei ɔnsɔre nnyina hɔ nka se:\n\n"

                        "O Awurade Woyɛ adebɔ nyinaa farebae nea yɛhu ne nea yɛnnhu nyinaa Wura! Wohu me nnisu ne mahomegu, "
                        "na wote mapisini ne magyadowtwa ne abooboo a medi wɔ m'akoma mu. Wo tumi nti! Me mfomso asi me kwan sɛ "
                        "mɛtwiw abɛn Wo; na me bɔne ama me ne Wo kronkronbea hɔ ntam kwan aware. O m'Awurade, Wo dɔ ama m'ayɛ ɔdefo; "
                        "na twe a matwe me ho afi Wo ho no ama masɛe; kwantenten a ada me Ne Wo ntam no ama magyigya. Menam W'ananmɔn a "
                        "woretu wɔ sare yi so no ne asɛnfua a ɛka se: Me ni, Me ni  a Wɔn a Woapaw wɔn no aka wɔ wiase mmaa nyinaa yi ne "
                        "W'Adiyisɛm no ho home ɛne Wo Somafo no mmae no ho mframa a ɛbɔ brɛoo no sɛ ma "
                        "ho kwan na matumi ahu W'ahoɔfɛ na madi nea ɛwɔ Wo Nwoma no mu so.\n\n"

                        "Afei ɔmma ne nsa so na ɔmmɔ Din Kɛse no mpɛn abiɛsa, ɔmmɔ ne mu sae mfane nsa nsɔ ne kotodwe na "
                        "ɔnka se:\n\n"

                        "Ayeyi nka Wo, O me Nyankopɔn, sɛ Woaboa me ama makae Wo na mayi Woayɛ, na Woada nea ɔyɛ Wo "
                        "Daa Asuten nsɛnkyerɛnne no adi akyerɛ me, na Woama makotow wɔ Wo Kɛseyɛ anim na Woama mabrɛ me ho ase "
                        "wɔ Wo Nyameti anim, na ama magye nea Wo Tɛkrɛma Kɛse no aka no atom.\n\n"

                        "Afei ɔnsɔre nnyina na ɔnka se:\n\n"

                        "O Nyankopɔn, me Nyankopɔn, m'akyi akyea ɛfisɛ me bɔne ayɛ adesoa ama me, na masoɔden asɛe me. "
                        "Sɛ medwen m'amumɔyɛ ne W'adɔe ho a, m'akoma nane wɔ me mu na me mogya huru wɔ me ntin mu. Ɛsane "
                        "W'ahoɔfɛ nti, O Wo a wiase pere hwehwɛ Wo! Fɛre si me kwan sɛ mɛpagyaw m'ani ahwɛ Wo na ɛyɛ m'aniwu "
                        "sɛ mɛteɛ me nsa a ayɛ krado no akyerɛ W'adom soro no.\n\n"

                        "Wohu, O me Nyankopɔn, sɛnea me nnisu si me kwan sɛ makae Wo na mentumi nna Wo su no adi "
                        "sɛnea ɛsɛ, O Wo a Woyɛ ɔsoro ne asase Ahenni so Wura! Menam W'ahenni ho nsɛnkyerɛnne ne Wo tumi "
                        "a ɛyɛ nwonwa no so resrɛ Wo  dom W'adɔfonom sɛnea Woadom te no, O Wo a Woyɛ abɔde nyinaa Wura, na "
                        "Wo nhyira fata Wo, O nea yɛhu ne nea yɛnhu so Hene!\n\n"

                        "Afei ɔmmɔ Din Kɛse no mpɛn abiɛsa, na ɔmmu nkotodwe mfa ne moma nka fam nka se:\n\n"

                        "Ayeyi nka Wo, O yɛn Nyankopɔn, sɛ Woama yɛn nea ɛtwe yɛn bɛn Wo, na Woadom yɛn nnepa biara a "
                        "ɛwɔ Wo nwoma ne Wo Kyerɛwsɛm mu.\n\n"

                        "Bɔ yɛn ho ban, yɛkotow srɛ Wo, O m'Awurade fi dɔm a nneɛmahunu ne nsusuihunu ahyɛ wɔn ma no ho. "
                        "Nokware ni, Wo ne Otumfo no, Nimade nyinaa no.\n\n"

                        "Afei ɔmma ne ti so, ntena ase nka se:\n\n"

                        "Medi nea Wɔn a Woapaw wɔn no gye to mu no ho adanse, O me Nyankopɔn, megye nea ɔsoro Paradise "
                        "ahoteefo ne wɔn a wɔatwa Wo tumi Ahennwa no ho ahyia no gye di no nso to mu.\n\n"

                        "Ɔsoro ne asase so ahenni nyinaa yɛ Wo dea, O wiase nyinaa Wura!", "text", sharePanelTitle: "Ɔhyɛ Mpae", subject: "Twi Prayers");
                },
                )
              ],
              elevation: 50,
            ),
          ),
          body: Scaffold(
            appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(
                title: Text(
                  "Ɔhyɛ Mpae",
                  style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),
                ),
                automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                    ),
                    iconSize: 30,
                    onPressed: ()  {
                      _assetsAudioPlayer.open(Audio("audios/OhyeMpae_Tenten.mp3"));
                      _assetsAudioPlayer.play();
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.stop,
                    ),
                    iconSize: 30,
                    onPressed: () {
                      _assetsAudioPlayer.stop();
                    },
                  )
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
                              child: Text(
                                "ƆHYƐ MPAE TENTEN\n",
                                style: TextStyle(
                                        fontSize: (20*_scale).clamp(12.0, 50.0), height: 1.40,
                                        fontWeight: FontWeight.bold, fontFamily: "NotoSerif"),
                                textAlign: TextAlign.center,

                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Nnɔnhwere aduonu-anan biara ntam no, bɔ Saa mpae yi prɛko pɛ.",
                                style: TextStyle(
                                        fontSize: (20*_scale).clamp(12.0, 50.0), height: 1.40, fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                        ),
                                textAlign: TextAlign.start,

                              ),
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
                              child: Text(
                                "Obiara a ɔpɛ sɛ ɔbɔ saa mpae yi no nsɔre nnyina hɔ, nnan n'ani nkyerɛ Nyankopɔn, "
                                "na ɔgyina hɔ saa no, ɔnhwɛ nifa, Na afei benkum, te sɛnea ɔretwɛn n'Awurade ahummɔbɔ, "
                                "Nea Ɔyɛ Mmɔborɔhunufo no, Ɔtema no.",
                                style: TextStyle(
                                  fontSize:(20*_scale).clamp(12.0, 50.0), height: 1.40,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,

                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Afei ɔnka se:\n",
                                style:  TextStyle(
                                  fontSize: (20 * _scale).clamp(12.0, 50.0),
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,

                              ),
                            )
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Expanded(
                              child: DropCapText(
                                "OWo a Woyɛ din nyinaa Wura ne ɔsorosoro Yɛfo! Menam wɔn a wɔyɛ Adekyee ma Wo Tebea wɔnnhu no, "
                                "Wo a wo Korɔn sen biribiara, Anuonyam nyinaa Wura no so kotow srɛ Wo sɛ ma me mpae nyɛ ogya a ɛbɛhye "
                                "nkatanim a ɛmma menhu W'ahoɔfɛ no, na ɛnyɛ hann a ɛbɛdi m'anim de me aba W'Anim tɛtrɛɛ te sɛ Po no.\n"
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
                            Expanded(child: Text("Afei ɔmma ne nsa so wɔ ahobrɛase mu nkyerɛ Nyankopɔn- nhyira ne ayeyi nka No-na ɔnka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("O Wo a woyɛ wiasefo Apɛde ne amanaman Dɔfo! Wohu sɛ madan m'ani rehwɛ Wo, na mapa me ho akyi "
                                "afi biribiara ho gye Wo nkutoo na masɔ W'ahama a ɛho mpopoe awosow abɔde nyinaa no mu. Meyɛ W'akoa, "
                                "O m'Awurade ne W'akoa ba. Hwɛ me megyina hɔ ayɛ krado sɛ mɛyɛ W'apɛde ne nea Wohwehwɛ, na magyae "
                                "biribiara akyi di gye sɛ nea ɛsɔ W'ani nkutoo. Menam W'ahummɔbɔ Po no ne Wo adom Adekyee-Nsoromma no so kotow "
                                "srɛ Wo sɛ fa W'akoa yɛ nea Wopɛ ne nea eye ma Wo, ɛsane Wo tumi a ɛnni kabea ne ayeyi nti! Biribiara a Wobɛda"
                                " no adi no yɛ nea m'akoma pɛ ne nea me kra pere hwehwɛ. O Nyankopɔn, me Nyankopɔn, nhwɛ m'anidaso ne me nneyɛe, "
                                "na mmom hwɛ Wo pɛ a abunkam afa ɔsoro ne asase so. Wɔ Wo Din Kokuroko no nti, "
                                "O Wo a woyɛ amanaman nyinaa Awurade! mapere hwehwɛ nea Wo pɛ nko ara na medɔ nea W'ani gye ho nkutoo.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔmmu nkotodwe na ɔmfa ne moma mmɔ fam na ɔnka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Wo kɛseyɛ korɔn sen nkyerɛkyerɛmu ne ntease a obiara wɔ fa Wo ho gye Wo ankasa.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei, ɔnsɔre nnyina hɔ na ɔnka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("O m'Awurade, ma me mpae nyɛ sɛ nkwa nsuten (nsu a ɛto see) na matɛna afebɔɔ (ama manyin akyɛ) "
                                "sɛnea W'ahenni tim hɔ daa ara pɛ, na mabɔ Wo Din wɔ Wo wiase ahorow no mu.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔnsan mpagyaw ne nsa wɔ ahobrɛease mu nka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("O, Wo a sɛ obi tew ne ho fi Wo ho a akoma ne akra nane na ɛnam Wo dɔ a ɛte sɛ ogya no atɔ "
                                "wiase redɛre framfram! Mekotow srɛ Wo wɔ Wo Din a wonam so abrɛ wiase nyinaa ase no sɛ, mfa nea "
                                "Wowɔ no nkame me, O Wo a wodi hene wɔ adasamma nyinaa so.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("O m'Awurade, Wohu saa ɔhɔho (ɔmanfrani) yi a ɔde ahopere rekɔ n'atenae a ɛkorɔn wɔ "
                                "W'ahenni pata no ase na ɛwɔ W'ahummɔbɔ ahye so no; nea wafom yi rehwehwɛ Wo bɔnefafiri po no, "
                                "saa mmɔbrɔwa yi, W'anuonyam atenae, saa ohiani yi W'ahonya ti.\n\n"

                                "Wowɔ tumi sɛ Woma nea Wopɛ biara ba mu.  Medi adanse sɛ ɛsɛ sɛ wɔyi Woayɛ wɔ Wo nnwuma nyinaa ho, "
                                "na wɔdi nea Wohyɛ so, na biribiara nsi Wo pɛ ho kwan.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔmma ne nsa so, na ɔmmɔ Din Kɛse mpɛn abiɛsa.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔmmɔ ne mu ase mfa ne nsa nsosɔ ne kotodwe wɔ Nyankopɔn anim – nhyira ne ayeyi nka "
                                "No-na ɔnka se: \n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Wohu, O me Nyankopɔn, sɛnea me sunsum apusuw m'akwaa ne me nipadua ɛsane pɛ a ɛpɛ sɛ ɛsom Wo, "
                                "sɛnea ɛrepere sɛ ɛbɛkae atomtom Wo; sɛnea ɛdi adanse fa nea Wo Mmaransɛm Tɛkrɛma no dii ho adanse wɔ "
                                "W'asɛm ahenni ne Wo nimdee ahemman mu. Wɔ saa tebea yi mu mpo, O m'Awurade, medɔ sɛ mekotow asrɛ Wo "
                                "mu nnepa nyinaa, sɛnea ɛbeyɛ a mɛda me hia adi na mama W'adom ne W'ahonya ayɛ kɛse, me mmerɛwyɛ ho ada "
                                "hɔ na ama W'ahoɔden ne Wo tumi ada adi.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔnsɔre nnyina hɔ mma ne nsa so mpɛn abien wɔ ahobrɛase mu nka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Nyame foforɔ biara nni hɔ ka Wo ho, Otumfo, Wo a wo nsam gow. Nyame foforo biara nni hɔ ka Wo ho, "
                                "Wo a woma ɛyɛ hɔ fi mfiase kɔsi awiei.\n\n"

                                "O Nyankopɔn, me Nyankopɔn! Wo fafri ama me akokuduru, na W'ahummɔbɔ ama m'ahoɔden, "
                                "Wo frɛ no akanyan me na W'adom no apagyaw me de me aba nkyɛn, Hena koraa ne me a anka mɛtwiw "
                                "abɛgyina Wo nkyɛn, Wo kuropɔn no aboboano, anaa mede m'ani bɛto Wo akanea a ɛrehyerɛn afi sorosoro "
                                "Wo pɛ mu no?  O m'Awurade, Wohu ɔwerɛhowni yi sɛ ɔrebɔ W'adom pon no mu ne ɔkra a wɔatow no asaworam yi "
                                "sɛ ɔrepere hwehwɛ daa nkwa nsuten a ɛfi W'adom nsam no. Wo na wohyɛ a ɛyɛ hɔ bere biara, O Wo a Woyɛ "
                                "din nyinaa Wura; na mede ne sɛ mɛgye Wo pɛ ato mu, O Ɔsorosoro yɛfo!\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔmma ne nsa so mpɛn abiɛsa nka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Onyankopɔn yɛ kɛse kyɛn ɔkɛse biara!\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔmmu nkotodwe, mfa ne moma mmɔ fam nka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Wo kɛseyɛ nti no, wɔn a wɔbɛn Wo no ayeyi ntumi nnuru Wo nkyɛn wɔ nokware mu na abɛn W'abobowano. "
                                "Megye to mu sɛ wɔatew Wo ho sen ade nyinaa na Wo kronkronyɛ boro din nyinaa so. Onyame foforo bi nni hɔ "
                                "ka Wo ho, Okokuroko, Anuonyam nyinaa Ti.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔntena ase na ɔnka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40,fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Medi adanse fa nea abɔde nyinaa ne ɔsoro Ahoteefo ne paradise Kronkrobea Mufo no, wɔn akyi no "
                                "Tɛkrɛma Kɛse no ankasa a ɛfi anuonyam nyinaa Ahyiaeso no, sɛ Wo yɛ Nyankopɔn, na nyame foforo biara "
                                "nni hɔ ka Wo ho, na nea wɔada no adi no yɛ Ahintasɛm Anwonwade nsɛnkyerɛnne a ɛsom bo, na ɛnam Ne so "
                                "na wɔaka akyerɛwsɛm Yɛ - Hɔ anwon abom.\n\n"

                                "Megye to mu sɛ Ɔno ne Din na Ɔsorosoro Hene de kyerɛwdua si so dua, na Ɔno na wɔabɔ ne din wɔ "
                                "Nyankopɔn Nwoma no mu no, Awurade a ɔte Ahennwa so wɔ ɔsoro ne fam.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔnsɔre nnyina hɔ nka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("O Awurade Woyɛ adebɔ nyinaa farebae nea yɛhu ne nea yɛnnhu nyinaa Wura! Wohu me nnisu ne mahomegu, "
                                "na wote mapisini ne magyadowtwa ne abooboo a medi wɔ m'akoma mu. Wo tumi nti! Me mfomso asi me kwan sɛ "
                                "mɛtwiw abɛn Wo; na me bɔne ama me ne Wo kronkronbea hɔ ntam kwan aware. O m'Awurade, Wo dɔ ama m'ayɛ ɔdefo; "
                                "na twe a matwe me ho afi Wo ho no ama masɛe; kwantenten a ada me Ne Wo ntam no ama magyigya. Menam W'ananmɔn a "
                                "woretu wɔ sare yi so no ne asɛnfua a ɛka se: Me ni, Me ni  a Wɔn a Woapaw wɔn no aka wɔ wiase mmaa nyinaa yi ne "
                                "W'Adiyisɛm no ho home ɛne Wo Somafo no mmae no ho mframa a ɛbɔ brɛoo no sɛ ma "
                                "ho kwan na matumi ahu W'ahoɔfɛ na madi nea ɛwɔ Wo Nwoma no mu so.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔmma ne nsa so na ɔmmɔ Din Kɛse no mpɛn abiɛsa, ɔmmɔ ne mu sae mfane nsa nsɔ ne kotodwe na "
                                "ɔnka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Ayeyi nka Wo, O me Nyankopɔn, sɛ Woaboa me ama makae Wo na mayi Woayɛ, na Woada nea ɔyɛ Wo "
                                "Daa Asuten nsɛnkyerɛnne no adi akyerɛ me, na Woama makotow wɔ Wo Kɛseyɛ anim na Woama mabrɛ me ho ase "
                                "wɔ Wo Nyameti anim, na ama magye nea Wo Tɛkrɛma Kɛse no aka no atom.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔnsɔre nnyina na ɔnka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("O Nyankopɔn, me Nyankopɔn, m'akyi akyea ɛfisɛ me bɔne ayɛ adesoa ama me, na masoɔden asɛe me. "
                                "Sɛ medwen m'amumɔyɛ ne W'adɔe ho a, m'akoma nane wɔ me mu na me mogya huru wɔ me ntin mu. Ɛsane "
                                "W'ahoɔfɛ nti, O Wo a wiase pere hwehwɛ Wo! Fɛre si me kwan sɛ mɛpagyaw m'ani ahwɛ Wo na ɛyɛ m'aniwu "
                                "sɛ mɛteɛ me nsa a ayɛ krado no akyerɛ W'adom soro no.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Wohu, O me Nyankopɔn, sɛnea me nnisu si me kwan sɛ makae Wo na mentumi nna Wo su no adi "
                                "sɛnea ɛsɛ, O Wo a Woyɛ ɔsoro ne asase Ahenni so Wura! Menam W'ahenni ho nsɛnkyerɛnne ne Wo tumi "
                                "a ɛyɛ nwonwa no so resrɛ Wo  dom W'adɔfonom sɛnea Woadom te no, O Wo a Woyɛ abɔde nyinaa Wura, na "
                                "Wo nhyira fata Wo, O nea yɛhu ne nea yɛnhu so Hene!\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔmmɔ Din Kɛse no mpɛn abiɛsa, na ɔmmu nkotodwe mfa ne moma nka fam nka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Ayeyi nka Wo, O yɛn Nyankopɔn, sɛ Woama yɛn nea ɛtwe yɛn bɛn Wo, na Woadom yɛn nnepa biara a "
                                "ɛwɔ Wo nwoma ne Wo Kyerɛwsɛm mu.\n\n"

                                "Bɔ yɛn ho ban, yɛkotow srɛ Wo, O m'Awurade fi dɔm a nneɛmahunu ne nsusuihunu ahyɛ wɔn ma no ho. "
                                "Nokware ni, Wo ne Otumfo no, Nimade nyinaa no.\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Afei ɔmma ne ti so, ntena ase nka se:\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40, fontStyle: FontStyle.italic)))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Text("Medi nea Wɔn a Woapaw wɔn no gye to mu no ho adanse, O me Nyankopɔn, megye nea ɔsoro Paradise "
                                "ahoteefo ne wɔn a wɔatwa Wo tumi Ahennwa no ho ahyia no gye di no nso to mu.\n\n"

                                "Ɔsoro ne asase so ahenni nyinaa yɛ Wo dea, O wiase nyinaa Wura!\n\n",  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                fontFamily: "NotoSans", height: 1.40)))
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AutoSizeText(
                                  "Bahá'u'lláh",
                                  style: TextStyle(
                                      fontSize:(20*_scale).clamp(12.0, 50.0),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.end,
                                 maxLines: 1,
                                ),
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
