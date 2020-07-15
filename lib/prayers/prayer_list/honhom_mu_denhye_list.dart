import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/honhom_mu_denhye_o_me_nyankopon.dart';
import 'package:onyamenkae/prayers/prayer_detail/honhom_mu_denhye_o_nyankopon_hye_me.dart';





class HonhomMuDenhyeList extends StatefulWidget {
  @override
  _HonhomMuDenhyeListState createState() => _HonhomMuDenhyeListState();
}

class _HonhomMuDenhyeListState extends State<HonhomMuDenhyeList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child:GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize(preferredSize: Size.fromHeight(40),
              child: GradientAppBar(title: Text("Honhom Mu Denhyɛ", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
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
                          "O me Nyankopɔn, bɔ koma a ɛmu tew ma me, na kanyan m'ahonim yɛ no mmotoo, O... "
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HonhomMuDenhyeOMeNyankopon()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "O Onyankopɔn! Hyɛ me kra den na ma n'ani nnye. Tew me koma mu. Ma me ahoɔden fo... "
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HonhomMuDenhyeONyankoponHyeMe()))
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