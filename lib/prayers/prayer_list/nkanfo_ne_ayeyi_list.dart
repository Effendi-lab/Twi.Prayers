import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/nkanfo_ne_ayeyi_ayeyi_nyinaa_nka_wo.dart';
import 'package:onyamenkae/prayers/prayer_detail/nkanfo_ne_ayeyi_o_awurade.dart';



class NkanfoNeAyeyiList extends StatefulWidget {
  @override
  _NkanfoNeAyeyiListState createState() => _NkanfoNeAyeyiListState();
}

class _NkanfoNeAyeyiListState extends State<NkanfoNeAyeyiList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
        ),

        body: Scaffold(
            appBar: PreferredSize(preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Nkanfo Ne Ayeyi", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
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
                          "O Awurade, me Nyankopɔn, Wo Din yɛ kɛse! Wo na abɔde nyinaa som Wo a Wo nsom o..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NkanfoNeAyeyiOAwurade()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "Ayeyi nyinaa nka Wo, O me Nyankopɔn! Wo a Woyɛ anuonyam ne ahenni, kɛseyɛ ne nnidi..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NkanfoNeAyeyiAyeyiNyinaaNkaWo()))
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