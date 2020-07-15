import 'package:flutter/material.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/nsra_mpae_Abdul_Baha_de_no.dart';
import 'package:onyamenkae/prayers/prayer_detail/nsra_mpae_Bahaullah_de_no.dart';






class NsraMpaeList extends StatefulWidget {
  @override
  _NsraMpaeListState createState() => _NsraMpaeListState();
}

class _NsraMpaeListState extends State<NsraMpaeList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,  gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Nsra Mpae", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false,  gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
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
                          "Nkamfo a ɛfi Woankasa hɔ, ne anuonyam a ahyerɛn fi Wo Ahoɔfɛ mmoroso no nyɛ Wo..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NsraMpaeBahaullahDeNo()))
                        },
                      ),
                      Divider(
                      ),
                      ListTile(
                        title: Text(
                          "Ɔno na Anuonyam nyinaa wɔ no! O Nyankopɔn, me Nyankopɔn! Mapagyaw me..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NsraMpaeAbdulBahaDeNo()))
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