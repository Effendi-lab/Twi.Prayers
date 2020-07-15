

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onyamenkae/hidden_words/hidden_words_list.dart';
import 'package:onyamenkae/prayers/prayer_detail/Ayaresa_mpae_tenten.dart';
import 'package:onyamenkae/prayers/prayer_detail/ahmad_adanse_pon_no.dart';

import 'package:onyamenkae/prayers/prayer_list/abusua_list.dart';
import 'package:onyamenkae/prayers/prayer_list/adasamma_list.dart';
import 'package:onyamenkae/prayers/prayer_list/ahohyeso_list.dart';

import 'package:onyamenkae/prayers/prayer_list/ahokyere_list.dart';
import 'package:onyamenkae/prayers/prayer_list/ahopakyi_list.dart';
import 'package:onyamenkae/prayers/prayer_list/akonkye_list.dart';

import 'package:onyamenkae/prayers/prayer_list/annwummere_list.dart';
import 'package:onyamenkae/prayers/prayer_list/anopa_list.dart';
import 'package:onyamenkae/prayers/prayer_list/apam_no_mu_denye_list.dart';

import 'package:onyamenkae/prayers/prayer_list/awofo_list.dart';
import 'package:onyamenkae/prayers/prayer_list/ayaresa_list.dart';
import 'package:onyamenkae/prayers/prayer_list/banbo_list.dart';
import 'package:onyamenkae/prayers/prayer_list/bonefafiri_list.dart';
import 'package:onyamenkae/prayers/prayer_list/denye_list.dart';
import 'package:onyamenkae/prayers/prayer_list/honhom_mu_denhye_list.dart';

import 'package:onyamenkae/prayers/prayer_list/honhom_mu_nhyiam_list.dart';
import 'package:onyamenkae/prayers/prayer_list/kununom_list.dart';
import 'package:onyamenkae/prayers/prayer_list/mmoa_list.dart';
import 'package:onyamenkae/prayers/prayer_list/naw_ruz_list.dart';
import 'package:onyamenkae/prayers/prayer_list/nhyiam_list.dart';
import 'package:onyamenkae/prayers/prayer_list/nkabom_list.dart';
import 'package:onyamenkae/prayers/prayer_list/nkanfo_ne_ayeyi_list.dart';
import 'package:onyamenkae/prayers/prayer_list/nnianim_list.dart';
import 'package:onyamenkae/prayers/prayer_list/nsra_mpae_list.dart';
import 'package:onyamenkae/prayers/prayer_list/awufo_mpae_list.dart';
import 'package:onyamenkae/prayers/prayer_list/ohye_mpae_list.dart';
import 'package:onyamenkae/prayers/prayer_list/osom_no_nkonimdi_list.dart';
import 'package:onyamenkae/prayers/prayer_list/sohwe_bere_list.dart';
import 'package:onyamenkae/prayers/prayer_list/sohwe_ne_ahokyere_bere_list.dart';


import 'package:onyamenkae/settings.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:wakelock/wakelock.dart';









class PrayerList extends StatefulWidget {
   @override
   _PrayerListState createState() => _PrayerListState();
 }

 class _PrayerListState extends State<PrayerList> {
 
@override
void initState() {

    super.initState();
    Wakelock.enable();
  }


   @override
   Widget build(BuildContext context) {

     return
        SafeArea(
         child: Scaffold(
appBar: PreferredSize(
  preferredSize: Size.fromHeight(50),
  child:   GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize:(25), fontFamily: "NotoSerif")),

    centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black ,Colors.red[300],]),

    actions: <Widget>[

        IconButton(
          icon: Icon(Icons.info_outline), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
        },
        ),
    ],
  ),
),
           body: Scaffold(
             appBar: PreferredSize(
               preferredSize: Size.fromHeight(40),
               child: GradientAppBar(title: Text("Bahá'í Mpae", style: TextStyle(fontSize:  20, fontFamily: "NotoSerif")),
                 centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300], ]),
               brightness: Brightness.light,),
             ),
             body: ListView(
               children: <Widget>[


                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                       title: Text("Nnianim", style: TextStyle(fontSize: 20, fontFamily: "NotoSans" )),
                        onTap: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NnianimList()))
                        },

                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Mmoa", style: TextStyle(fontSize: 20, fontFamily: "NotoSans" )),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MmoaList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Sɔhwɛ Bere", style: TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SohweBere()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Annwummere", style: TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AnnwummereList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Abusua", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AbusuaList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Awofo", style: TextStyle(fontSize: 20,  fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AwofoList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Kununom", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>KununomList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Apam No Mu Denyɛ", style: TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ApamNoMuDenyeList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Ahohyɛso", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AhohyesoList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Bɔnefafiri", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BonefafiriList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),

                      ListTile(
                        title: Text("Ayaresa", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AyaresaList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Adasamma (Wiase Nnipa)", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AdasammaList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Nhyiam", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NhyiamList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Honhom Mu Nhyiam", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HonhomMuNhyiamList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),


                      ListTile(
                        title: Text("Honhom Mu Denyɛ", style: TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HonhomMuDenhyeList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),

                      ListTile(
                        title: Text("Sɔhwɛ Ne Ahokyere Bere", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SohweNeAhokyereBereList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Ɔsom No Nkonimdi", style: TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OsomNoNkonimdiList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Nkabom", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NkabomList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Denyɛ", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DenyeList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Ahopakyi", style: TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AhopakyiList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Anɔpa", style: TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AnopaList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Nkanfo Ne Ayeyi", style: TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NkanfoNeAyeyiList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Banbɔ", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BanboList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Mpae A Wɔbɔ Ma Awufo", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AwufoMpaeList()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text("Ahokyere", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AhokyereList()))
                        },
                      ),


                    ],
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: Text("Nnapɔn Nna Mpae", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif" ,
                    fontWeight: FontWeight.bold),
                     textAlign: TextAlign.center,),
                 ),
                 Card(
                   elevation: 0.0,

                   child: Column(
                     children: <Widget>[

                       ListTile(
                         title: Text("Ɔhyɛ Mpae", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                         onTap: ()=>{
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>OhyeMpaeList()))
                         },
                       ),
                       Divider(
                         height: 2,
                       ),
                       ListTile(
                         title: Text("Ahmad Adanse Pon No", style: TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                         onTap: ()=>{
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>AhmadAdansePonNo()))
                         },
                       ),
                       Divider(
                         height: 2,
                       ),
                       ListTile(
                         title: Text("Nsra Mpae", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                         onTap: ()=>{
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>NsraMpaeList()))
                         },
                       ),
                       Divider(
                         height: 2,
                       ),
                       ListTile(
                         title: Text("Akɔnkye", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                         onTap: ()=>{
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>AkonkyeList()))
                         },
                       ),
                       Divider(
                         height: 2,
                       ),
                       ListTile(
                         title: Text("Ayaresa Mpae Tenten", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                         onTap: ()=>{
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>AyaresaMpaeTenten()))
                         },
                       ),
                       Divider(
                         height: 2,
                       ),

                       ListTile(
                         title: Text("Naw-Ruz", style:  TextStyle(fontSize: 20, fontFamily: "NotoSans")),
                         onTap: ()=>{
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>NawRuzList()))
                         },
                       ),


                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: Text("Ahintasɛm", style:  TextStyle(fontSize: 20,
                       fontFamily: "NotoSerif" ,
                        fontWeight: FontWeight.w600
                   ),
                     textAlign: TextAlign.center,),
                 ),
                 Card(
                   elevation: 0.0,
                   
                   child: Column(
                     children: <Widget>[
                       ListTile(
                         title: Text("Arabic Fa No", style:  TextStyle(fontSize: 20)),
                       subtitle: Text("Ɔfa A Edi Kan", style: TextStyle(fontSize: 14),),
                           onTap: ()=>{
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>HiddenWordsList()))
                           }
                       ),
                     ],
                   ),

                 ),


                 Divider(
                   height: 60, color: Colors.transparent,
                 ),



               ],
             ),
           )
         )
       );

   }
 }



