import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/sohwe_ne_ahokyere_bere_anuonyam_nka_wo.dart';



class SohweNeAhokyereBereList extends StatefulWidget {
  @override
  _SohweNeAhokyereBereListState createState() => _SohweNeAhokyereBereListState();
}

class _SohweNeAhokyereBereListState extends State<SohweNeAhokyereBereList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,  gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
        ),

        body: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Sɔhwɛ Ne Ahokyere Bere", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Anuonyam nka Wo, O me Nyankopɔn! Sɛ ɛnyɛ ɔhaw ne amanehunu a etwitware yɛn..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SohweNeAhokyereBereAnuonyamNkaWo()))
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