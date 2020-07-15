import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/abusua_mawurade_mawurade.dart';
import 'package:onyamenkae/prayers/prayer_detail/abusua_o_me_nyankopon.dart';

class AbusuaList extends StatefulWidget {
  @override
  _AbusuaListState createState() => _AbusuaListState();
}

class _AbusuaListState extends State<AbusuaList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),

          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,  gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: GradientAppBar(title: Text("Abusua", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false,  gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.5,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "O me Nyankopɔn mesrɛ Wo hɔ bɔnefafiri, na mesrɛ akwankyerɛ sɛnea ɛbɛyɛ a Wo nkoa..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Báb"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AbusuaOMeNyankopon()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text(
                          "M'Awurade, m'Awurade! Mekamfo Wo na meda Wo ase sɛ Woahu W'afenaa mmɔbor..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AbusuaMawurade()))
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