import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/bonefafiri_ayeyi_nka_wo.dart';



class BonefafiriList extends StatefulWidget {
  @override
  _BonefafiriListState createState() => _BonefafiriListState();
}

class _BonefafiriListState extends State<BonefafiriList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,  gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: GradientAppBar(title: Text("Bɔnefafiri", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false,  gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
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
                          "Ayeyi nka Wo; O Awurade! Fa yɛn  bɔne kyɛ yɛn, hu yɛn mmɔbɔ na boa yɛn ma yɛntumi..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Báb"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BonefafiriAyeyiNkaWo()))
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