import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:share_extend/share_extend.dart';


class Nhyira extends StatefulWidget {
  @override
  _NhyiraState createState() => _NhyiraState();
}

class _NhyiraState extends State<Nhyira> {
  double _prevScale;
  double _scale;

  @override
  void initState() {
    super.initState();
    _prevScale = _scale = 1.0;
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
              child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
                centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                actions: <Widget>[
                  IconButton(
                    icon:  Icon(Icons.share, size: 30.0,), onPressed: (){
                      ShareExtend.share("NNIANIM\n\n"
                          "Nhyira nka beae no, ofi no, faako, kuropɔn, ne koma no, bepɔw, hintabea hɔ, ɔbodan no, subɔn,"
                          " ne asase no, po, supɔw, ne nguan adidibea ko a wɔbɔ Onyankopɔn din kamfo No hyɛ No anuonyam wɔ hɔ.\n\n"

                          "Bahá'u'lláhn\n\n\n"
                          "Onyame Nkae app", "text", sharePanelTitle: "Nnianim", subject: "Twi Prayers");
                  },
                  )
                ],
              ),
            ),

            body: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Nnianim", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),), centerTitle: true,
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]) )
              ),
              body: ListView(
                children: <Widget>[
                  Card(
                    elevation: 3,
                    margin: EdgeInsets.all(11),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(

                                child: DropCapText("Nhyira nka beae no, ofi no, faako, kuropɔn, ne koma no, bepɔw, hintabea hɔ, ɔbodan no, subɔn,"
                                    " ne asase no, po, supɔw, ne nguan adidibea ko a wɔbɔ Onyankopɔn din kamfo No hyɛ No anuonyam wɔ hɔ.",
                                  parseInlineMarkdown: true, forceNoDescent: true, dropCapPosition:DropCapPosition.start,
                                  mode: DropCapMode.inside, dropCapChars: 1, dropCapPadding: EdgeInsets.only(right: 5.0),
                                  dropCapStyle: TextStyle(fontSize: (60*_scale).clamp(37.0, 150.0),
                                    fontFamily: "NotoSerif", height: 1.0,),


                                  indentation: Offset(0.0, 0.0),
                                  style:  TextStyle(fontSize: (20*_scale).clamp(12.0, 50.0),
                                      fontFamily: "NotoSans", height: 1.40),),
                              ),
                            ],
                          ),

                          Divider(
                            height: 15, color: Colors.transparent,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize:(20 * _scale).clamp(12.0, 50.0), fontWeight: FontWeight.bold,
                                    fontFamily: "NotoSans",),
                                    textAlign: TextAlign.end,maxLines: 1,),
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
            )

        ),
      ),
    );
  }
}
