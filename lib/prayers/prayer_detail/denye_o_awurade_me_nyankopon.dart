import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';

class DenyeOAwuradeMeNyankopon extends StatefulWidget {
  @override
  _DenyeOAwuradeMeNyankoponState createState() => _DenyeOAwuradeMeNyankoponState();
}

class _DenyeOAwuradeMeNyankoponState extends State<DenyeOAwuradeMeNyankopon> {
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
                        ShareExtend.share("DENYƐ\n\n"
                            "O Awurade me Nyakopɔn, anuonyam nka Wo din! Ɛnam Wo tumi a ebunkam abɔde nyinaa so ne W'ahenni a ɛtra "
                            "ade-bɔ nyinaa so, ne W'asem a Wode hintawee wɔ Wo nyansa mu, ɛna sɛnea ɛyɛe a Wobɔɔ Ɔsoro ne Asase a ɛka bɔ "
                            "mu ma yɛtumi gyina pintinn wɔ ɔdɔ a yɛwɔ ma Wo, ne osetie a yɛyɛ ma Wo sɛ, boa yɛn na yɛmfa yɛn ani nto Wo "
                            "so na yɛnsɛpɛw yɛn ho wɔ W'anuonyam mu.\n\n"

                            "O me Nyankopɔn, ma yɛn tumi na yɛnna Wo Nsɛkyerɛnne adi wɔ abɔde mu.\n\n"

                            "Mpam me mfi W'áhennwan no anim. Afei mfa W'adom no nhintaw me, efisɛ Wo nkutoo ne m'ahiade.\n\n"

                            "Onyame foforo bi nni baabi ka Wo ho, Ɔde-asɛm-kyɛ Agya! Wo a Woyɛ ade nyinaa. O, Wo a Woyɛ "
                            "wɔn a ahu Wo no nyinaa dɔfo. Nhyira nka Wo.\n\n"
                            "Bahá'u'lláh\n\n"

                            "Onyame Nkae app", "text", sharePanelTitle: "Denyɛ", subject: "Twi Prayers");

                    },
                    )
                  ],
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Denyɛ", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: ()
                        {
                          _assetsAudioPlayer.open(Audio("audios/Denye2_O_Awurade.mp3"));
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

                                  child: DropCapText("OAwurade me Nyakopɔn, anuonyam nka Wo din! Ɛnam Wo tumi a ebunkam abɔde nyinaa so ne W'ahenni a ɛtra "
                        "ade-bɔ nyinaa so, ne W'asem a Wode hintawee wɔ Wo nyansa mu, ɛna sɛnea ɛyɛe a Wobɔɔ Ɔsoro ne Asase a ɛka bɔ "
                        "mu ma yɛtumi gyina pintinn wɔ ɔdɔ a yɛwɔ ma Wo, ne osetie a yɛyɛ ma Wo sɛ, boa yɛn na yɛmfa yɛn ani nto Wo "
                                      "so na yɛnsɛpɛw yɛn ho wɔ W'anuonyam mu.\n\n"

                                      "O me Nyankopɔn, ma yɛn tumi na yɛnna Wo Nsɛkyerɛnne adi wɔ abɔde mu.\n\n"

                                      "Mpam me mfi W'áhennwan no anim. Afei mfa W'adom no nhintaw me, efisɛ Wo nkutoo ne m'ahiade.\n\n"

                                      "Onyame foforo bi nni baabi ka Wo ho, Ɔde-asɛm-kyɛ Agya! Wo a Woyɛ ade nyinaa. O, Wo a Woyɛ "
                                      "wɔn a ahu Wo no nyinaa dɔfo. Nhyira nka Wo.",
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

                                  child: Text("O me Nyankopɔn, ma yɛn tumi na yɛnna Wo Nsɛkyerɛnne adi wɔ abɔde mu.",
                                    style: TextStyle(fontSize:(20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,   ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child:Text("Mpam me mfi W'áhennwan no anim. Afei mfa W'adom no nhintaw me, efisɛ Wo nkutoo ne m'ahiade.",
                                    style: TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: Text("Onyame foforo bi nni baabi ka Wo ho, Ɔde-asɛm-kyɛ Agya! Wo a Woyɛ ade nyinaa. O, Wo a Woyɛ "
                                      "wɔn a ahu Wo no nyinaa dɔfo. Nhyira nka Wo.",
                                    style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0), fontFamily: "NotoSans", height: 1.40),
                                    textAlign: TextAlign.start,  ),
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