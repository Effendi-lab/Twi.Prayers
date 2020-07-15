import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/denye_ayeyi_ne_anuonyam.dart';
import 'package:onyamenkae/prayers/prayer_detail/denye_o_awurade_me_nyankopon.dart';


class DenyeList extends StatefulWidget {
  @override
  _DenyeListState createState() => _DenyeListState();
}

class _DenyeListState extends State<DenyeList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
        ),

        body: Scaffold(
            appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Denyɛ", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
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
                          "Ayeyi ne anuonyam nka Wo, O Nyankopɔn! Ma ho kwan na da a yɛbɛtwiw abɛn Wo kro..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DenyeAyeyiNeAnuonyam()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "O Awurade me Nyakopɔn, anuonyam nka Wo din! Ɛnam Wo tumi a ebunkam abɔde nyin..."
                          , style:  TextStyle(fontSize: 20,fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DenyeOAwuradeMeNyankopon()))
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