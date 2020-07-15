import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/banbo_o_mawurade_wonim.dart';
import 'package:onyamenkae/prayers/prayer_detail/banbo_o_onyankopon_me_nyankopon.dart';
import 'package:onyamenkae/prayers/prayer_detail/banbo_wo_otumfo_nyankopon.dart';



class BanboList extends StatefulWidget {
  @override
  _BanboListState createState() => _BanboListState();
}

class _BanboListState extends State<BanboList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
        ),

        body: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Banbɔ", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
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
                          "Wɔ Otumfo Nyankopɔn a tumi ne Adom nyinaa yɛ ne dea, na Obunkam fa nneɛma..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Báb"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BanboWoOtumfoNyankopon()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "O m'Awurade! Wonim sɛ ɔyaw ne abɛbrɛsɛ atwa nnipa ho ahyia. Na ahokyere ne ɔhaw..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BanboOMawuradeWonim()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "O Onyankopɔn, me Nyankopɔn, bɔ Wo nkoa a Wɔgye Wo di ho ban fi wɔn nsusui ne akɔ..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BanboOOnyankoponMeNyankopon()))
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

