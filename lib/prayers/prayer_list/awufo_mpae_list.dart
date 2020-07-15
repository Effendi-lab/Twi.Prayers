import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/awufo_mpae_anuonyam_nka_wo.dart';


class AwufoMpaeList extends StatefulWidget {
  @override
  _AwufoMpaeListState createState() => _AwufoMpaeListState();
}

class _AwufoMpaeListState extends State<AwufoMpaeList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
        ),

        body: Scaffold(
            appBar: PreferredSize(preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Mpae A Wɔbɔ Ma Awufo", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]), ),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Anuonyam nka Wo! O Awurade me Nyankopɔn. Ɛmma nea Wonam Wo daape..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AwufoMpaeAnuonyamNkaWo()))
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