import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/naw_ruz_ayeyi_nka_wo.dart';
import 'package:onyamenkae/prayers/prayer_detail/naw_ruz_me_ne_okronkroni.dart';

class NawRuzList extends StatefulWidget {
  @override
  _NawRuzListState createState() => _NawRuzListState();
}

class _NawRuzListState extends State<NawRuzList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Naw-Ruz", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
              ),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Ayeyi nka Wo, O me Nyankopɔn, sɛ Woahyɛ Naw–Ruz sɛ ɛnyɛ afahyɛ mma wɔn a wɔfa..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NawRuzAyeyiNkaWo()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text(
                          "Mene Ɔkronkroni Kann no, Ɔkɛse mu Ɔkɛse	no, Anuonyam mu Onuonyamfo no Ayeyi..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NawRuzMeNeOkronkroni()))
                        },
                      ),
                      Divider(
                        height: 2,
                      )
                    ],
                  ),
                )
              ],
            )




        ),

      ),
    );
  }
}