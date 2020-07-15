import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/honhom_mu_nhyiam_o_osoro_hene_agya.dart';





class HonhomMuNhyiamList extends StatefulWidget {
  @override
  _HonhomMuNhyiamListState createState() => _HonhomMuNhyiamListState();
}

class _HonhomMuNhyiamListState extends State<HonhomMuNhyiamList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: GradientAppBar(title: Text("Honhom Mu Nhyiam", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
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
                          "O Ɔsoro Hene Agya! Yɛahyia ho ɔhonam mu de, nanso yɛn koma a anya atenka sononko..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HonhomMuNhyiamOOsoroHeneAgya()))

                        },
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