import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'o_abode_ba_bu_wabrabo.dart';
import 'o_abode_ba_do_me.dart';
import 'o_abode_ba_eden_na_woma_wo_were.dart';
import 'o_abode_ba_me_do_ne_mahoden.dart';
import 'o_abode_ba_nantew.dart';
import 'o_abode_ba_nka_nkyere_okra.dart';
import 'o_abode_ba_wo_paradise_ne_me_do.dart';
import 'o_abode_ba_woye_me_kanea.dart';
import 'o_hann_ba_ma_wo_were_mfi.dart';
import 'o_honhom_ba_hu_se_nokware.dart';
import 'o_honhom_ba_mabo_wo.dart';
import 'o_honhom_ba_mafotusem.dart';
import 'o_nipa_ba_bere_a_wo_ankasa.dart';
import 'o_nipa_ba_di_ahurusi.dart';
import 'o_nipa_ba_ma_me_nsom_wo_bo.dart';
import 'o_nipa_ba_mma_wo_were_nhow.dart';
import 'o_nipa_ba_ntow.dart';
import 'o_nipa_ba_nyi_matade.dart';
import 'o_nipa_ba_se_makoa_bi.dart';
import 'o_nipa_ba_se_wo_do_me_a.dart';
import 'o_nipa_ba_se_wotu_fa_wim.dart';
import 'o_okasa_ba_wo_ne_mahoden.dart';
import 'o_otumfo_no_ba_maye_owuo.dart';







class HiddenWordsList extends StatefulWidget {
  @override
  _HiddenWordsListState createState() => _HiddenWordsListState();
}

class _HiddenWordsListState extends State<HiddenWordsList> {
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
              child: GradientAppBar(title: Text("Ahintasɛm - Arabic Fa No", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif" ),),
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
                          "1. O HONHOM BA! M'afotusɛm a edi kan ni: Nya akoma a emu tew, na ɛwɔ ahummɔbɔ..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OhonhomBaMafotusem()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "5. O ABƆDE BA! Dɔ Me, ama Matumi adɔ wo. Sɛ Woannɔ Me a, ɔkwan biara so Me dɔ ren..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans" ),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaDoMe()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "6. O ABƆDE BA! Wo (Soro Tenabea) Paradise ne Me dɔ; wo soro fi yɛ Me ne wo ayɔnkofa..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans" ),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaWoParadiseNeMeDo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "7. O NIPA BA! Sɛ wodɔ Me a, pa wo ho akyi; na sɛ wohwehwɛ M'anigye a, ɛno de nhweh..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaSeWoDoMeA()))
                        },
                      ),

                      Divider(),
                      ListTile(
                        title: Text(
                          "9. O ABƆDE BA! Me dɔ ne M'ahoɔden; nea ɔhyɛn mu no ho rentɔ kyima na ɔrenyera da..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaMeDoNeMahoden()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "10. O ƆKASA BA! Wo ne M'ahoɔden; hyɛn mu sɛnea ɛbɛyɛ a wobɛnya asetena a ɔhaw nni..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans" ),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OOkasaBaWoNeMahoden()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "11. O ABƆDE BA! Woyɛ Me Kanea na Me hann wɔ wo mu. Nya wo hyerɛn no fi mu..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaWoyeMeKanea()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "16. O HANN BA! Ma wo werɛ mfi biribiara gye Me nkutoo, na wo ne Me Honhom adi..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OHannBaMaWoWereMfi()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "17. O NIPA BA! Ma Me nsom wo bo na nhwehwɛ ɔboafo biara. Efisɛ obiara nsom..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaMaMeNsomWoBo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "22. O HONHOM BA! Mabɔ wo anuonyam mu, nanso woagu w'anim ase. Sɔrɛ ɛ, na yɛ nea..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OHonhomBaMaboWo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "26. O ABƆDE BA! Ɛdɛn na woma wo werɛ fi w'ankasa wo mfomso na w'ani ku afoforo..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaEdenNaWomaWoWere()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "27. O NIPA BA! Bere a wo ankasa woyɛ ɔbɔnefo yi, nka afoforo bɔne ho asɛm. Sɛ w..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaBereAWoAnkasa()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "28. O HONHOM BA! Hu sɛ nokware mu onipa biara a ose afoforo sɛ wɔnyɛ nea ɛteɛ (tene..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OHonhomBaHuSeNokware()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "29. O ABƆDE BA! Nka nkyerɛ ɔkra biara sɛ ɔnyɛ ɔnyɛ biribi a wo ankasa worentumi nyɛ..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaNkaNkyereOkra()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "30. O NIPA BA! Sɛ M'akoa bi bisa wo biribi a, mfa nkame no, efisɛ n'anim yɛ M'anim; na..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaSeMakoaBi()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "31. O ABƆDE BA! Bu wabrabɔ ho akontaa dabiara ansa na wɔafrɛ wo abɛbu wo atɛn..."
                          , style:  TextStyle(fontSize: 20,fontFamily: "NotoSans" ),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaBuWabrabo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "32. O OTUMFO NO BA! Mayɛ owu ɔsomafo a ɔde anigye anigye brɛ wo. Ɛdɛn na wohow..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OOtumfoNoBaMayeOwuo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "35. O NIPA BA! Mma wo werɛ nhow gye sɛ wo ne Yɛn ntam ware. Na mma w'ani nnye..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaMmaWoWereNhow()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "36. O NIPA BA! Di ahurusi na nya anigye wɔ wo koma koma mu, sɛnea ɛbɛyɛ a wobɛtu..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaDiAhurusi()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "37. O NIPA BA! Nyi (Nworɔw) M'atade fɛfɛɛfɛ no mfi wo ho,na mma wo kyɛfa wɔ M'asute..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaNyiMatade()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "38. O ABƆDE BA! Nantew wɔ Me mmaransɛm mu wɔ Me ho dɔ nti (ɔdɔ a wo wɔ ma Me ati..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaNantew()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "39. O NIPA BA! Ntow Me mmaransɛm nkyene sɛ wodɔ M'ahoɔfɛ de a, na mma wo werɛ m..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaNtow()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "40. O NIPA BA! Sɛ wotu fa wim, mmaa nyinaa, kyinkyin ɔsorosoro afanan nyinaa..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaSeWotuFaWim()))
                        },
                      ),
                      Divider(
                        height:6, color: Colors.transparent,
                      ),

                    ],
                  ),

                ),
                Divider(
                  height:100, color: Colors.transparent,
                ),
              ],
            )




        ),

      ),
    );
  }
}