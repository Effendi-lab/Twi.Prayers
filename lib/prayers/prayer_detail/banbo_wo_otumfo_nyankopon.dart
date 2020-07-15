import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


import 'package:share_extend/share_extend.dart';

class BanboWoOtumfoNyankopon extends StatefulWidget {
  @override
  _BanboWoOtumfoNyankoponState createState() => _BanboWoOtumfoNyankoponState();
}

class _BanboWoOtumfoNyankoponState extends State<BanboWoOtumfoNyankopon> {
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
                        ShareExtend.share("BANBƆ\n\n"

                            "Wɔ Otumfo Nyankopɔn a tumi ne Adom nyinaa yɛ ne dea, na Obunkam fa nneɛma nyinaa so no Din mu.\n\n"

                            "Kronkron ne Awurade nea ahenni mfiase hyɛ Ne nsam. Wo na Wonam W'Asɛm a ɛka se 'Ɛnyɛ Hɔ' a 'Ɛyɛ Hɔ', "
                            "so bɔɔ nea Wopɛ. Ɔno na tumi nyinaa yɛ Ne dea fi tete besi nnɛ, a ɛda so yɛ Ne dea afebɔɔ. Ɔno na ɔma "
                            "nkonim dom nea Ɔpɛ, Wɔ Ne pɛ tumi mu. Nokware, Otumfo ne Anuonyamfo ne no.\n\n"

                            "Ɔno na anuonyam ne Kɛseyɛ a ɛwɔ Adiyisɛm ne Adebɔ a ɛfi ɔsoro ahemman mu anaa biribiara a ɛwɔ wɔn ntam no nyinaa "
                            "yɛ Ne dea. Ɔyɛ Tumi ne Anuonyam nyinaa Wura. Efi tete Ɔno ne ahoɔden nyinaa a biribiara rentumi No ti "
                            "na ɛbɛkɔ so saa ara afebɔɔ. Nokware Ɔyɛ ahoɔden ne tumi Wura. Ahenni a ɛwɔ ɔsoro ne asase so, ne nea ɛwɔ "
                            "ntam nyinaa yɛ Ne dea, na Ne tumi bunkam ade nyinaa so. Ɔsoro ne asase so ahonya nyinaa ne biribiara a ɛwɔ mfinimfini yɛ ne de, na Ne banbɔ bunkam nneɛma nyinaa so. "
                            "Ɔno na ɔbɔɔ ɔsoro ne asase ne nea ɛwɔ ntam nyinaa, na nokware mu, Ɔdi biribiara ho adanse. "
                            "Ɔyɛ Awurade a n'ani ku nea ɛwɔ ɔsoro ne asase so, ne nea ɛwɔ ntam nyinaa, na nokware Onyame ho yɛ hare wɔ n'aniku ho. Ɔno na ɔhyehyɛ nneɛma nyina a ɛsɛ obiara a "
                            "ɔwɔ ɔsoro ne asase yi so ne nea ɛwɔ ntam nyinaa. Nokware, Ɔyɛ ne Banbɔfo kɛse ampa. Ɔsoro ne asase safe "
                            "ne nneɛma nyinaa a ɛwɔ mfinimfini hyɛ ne nsa. Ne pɛ mu, Ɔkyɛ ade, ɛnam Ne tumi nti. Nokware, N'adom "
                            "bunkam ade nyinaa so, na Ɔyɛ Nyame Nimade. Ka se: Onyankopɔn som me bo; Ɔno na ahenni nyinaa hyɛ Ne "
                            "nsam. Ɔnam Ne dɔm a wɔwɔ ɔsoro ne asase ne nea ɛwɔ wɔn ntam nyinaa tumi so bɔ Ne nkoa mu nea Ɔpɛ ho ban. "
                            "Nokware, Onyankopɔn aniku bɔ nneɛma nyinaa ho ban.\n\n"

                            "Woyɛ Ɔkɛse a yɛrentumi mfa biribiara nsusuw Wo kɛseyɛ, O Awurade! Bɔ yɛn ho ban fi nea ɛwɔ yɛ "
                            "anim ne yɛn akyi, yɛn atifi, yɛn nifa so, yɛn benkum so, yɛn nan ase ne ɔfa biara a yɛn ho da adagyaw. "
                            "Ampa, Wo banbɔ ho ntɔ kyima da. (nneɛma a Wobɔ ho ban nyinaa nni nkogu da).\n\n"

                            "Báb\n\n\n"
                            "Onyame Nkae app", "text", sharePanelTitle: "Banbɔ", subject: "Twi Prayers");
                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Banbɔ", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Banbo1_Wo_Otumfo_Nyankopon.mp3"));
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

                                  child: DropCapText("Wɔ Otumfo Nyankopɔn a tumi ne Adom nyinaa yɛ ne dea, na Obunkam fa nneɛma nyinaa so no Din mu.\n\n"

                                      "Kronkron ne Awurade nea ahenni mfiase hyɛ Ne nsam. Wo na Wonam W'Asɛm a ɛka se 'Ɛnyɛ Hɔ' a 'Ɛyɛ Hɔ', "
                                      "so bɔɔ nea Wopɛ. Ɔno na tumi nyinaa yɛ Ne dea fi tete besi nnɛ, a ɛda so yɛ Ne dea afebɔɔ. Ɔno na ɔma "
                                      "nkonim dom nea Ɔpɛ, Wɔ Ne pɛ tumi mu. Nokware, Otumfo ne Anuonyamfo ne no.\n\n"

                                      "Ɔno na anuonyam ne Kɛseyɛ a ɛwɔ Adiyisɛm ne Adebɔ a ɛfi ɔsoro ahemman mu anaa biribiara a ɛwɔ wɔn ntam no nyinaa "
                                      "yɛ Ne dea. Ɔyɛ Tumi ne Anuonyam nyinaa Wura. Efi tete Ɔno ne ahoɔden nyinaa a biribiara rentumi No ti "
                                      "na ɛbɛkɔ so saa ara afebɔɔ. Nokware Ɔyɛ ahoɔden ne tumi Wura. Ahenni a ɛwɔ ɔsoro ne asase so, ne nea ɛwɔ "
                                      "ntam nyinaa yɛ Ne dea, na Ne tumi bunkam ade nyinaa so. Ɔsoro ne asase so ahonya nyinaa ne biribiara a ɛwɔ mfinimfini yɛ ne de, na Ne banbɔ bunkam nneɛma nyinaa so. "
                                      "Ɔno na ɔbɔɔ ɔsoro ne asase ne nea ɛwɔ ntam nyinaa, na nokware mu, Ɔdi biribiara ho adanse. "
                                      "Ɔyɛ Awurade a n'ani ku nea ɛwɔ ɔsoro ne asase so, ne nea ɛwɔ ntam nyinaa, na nokware Onyame ho yɛ hare wɔ n'aniku ho. Ɔno na ɔhyehyɛ nneɛma nyina a ɛsɛ obiara a "
                                      "ɔwɔ ɔsoro ne asase yi so ne nea ɛwɔ ntam nyinaa. Nokware, Ɔyɛ ne Banbɔfo kɛse ampa. Ɔsoro ne asase safe "
                                      "ne nneɛma nyinaa a ɛwɔ mfinimfini hyɛ ne nsa. Ne pɛ mu, Ɔkyɛ ade, ɛnam Ne tumi nti. Nokware, N'adom "
                                      "bunkam ade nyinaa so, na Ɔyɛ Nyame Nimade. Ka se: Onyankopɔn som me bo; Ɔno na ahenni nyinaa hyɛ Ne "
                                      "nsam. Ɔnam Ne dɔm a wɔwɔ ɔsoro ne asase ne nea ɛwɔ wɔn ntam nyinaa tumi so bɔ Ne nkoa mu nea Ɔpɛ ho ban. "
                                      "Nokware, Onyankopɔn aniku bɔ nneɛma nyinaa ho ban.\n\n"

                                      "Woyɛ Ɔkɛse a yɛrentumi mfa biribiara nsusuw Wo kɛseyɛ, O Awurade! Bɔ yɛn ho ban fi nea ɛwɔ yɛ "
                                      "anim ne yɛn akyi, yɛn atifi, yɛn nifa so, yɛn benkum so, yɛn nan ase ne ɔfa biara a yɛn ho da adagyaw. "
                                      "Ampa, Wo banbɔ ho ntɔ kyima da. (nneɛma a Wobɔ ho ban nyinaa nni nkogu da)."
                                      ,
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
                                    child: AutoSizeText("Báb", style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                        fontFamily: "NotoSans",fontWeight: FontWeight.bold),
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