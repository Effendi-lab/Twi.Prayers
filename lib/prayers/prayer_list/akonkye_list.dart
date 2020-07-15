import 'package:flutter/material.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/akonkye_ayeyi_nka_wo.dart';








class AkonkyeList extends StatefulWidget {
  @override
  _AkonkyeListState createState() => _AkonkyeListState();
}

class _AkonkyeListState extends State<AkonkyeList> {
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
              child: GradientAppBar(title: Text("Akɔnkye", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false,  gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
              ),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.5,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Ayeyi nka Wo, O Awurade me Nyankopɔn! Menam saa Yikyerɛ a ɛnam so nti sum adan..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AkonkyeAyeyiNkaWo()))
                        },
                      ),




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