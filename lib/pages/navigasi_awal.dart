import 'package:flutter/material.dart';
import 'package:test_app/pages/page_test1.dart';
import 'package:test_app/pages/page_test2.dart';
import 'package:test_app/pages/page_test3.dart';
import 'package:test_app/theme.dart';

class NavigasiAwal extends StatelessWidget {
  const NavigasiAwal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 77, right: 77),
              child: Center(
                child: Column(
                 children: [
                   SizedBox(height: 150,),
                   Text('Made by', style: fontmade.copyWith(fontSize: 18),),
                   SizedBox(height: 30,),
                   Text('[Azizah]', style: fontnama.copyWith(fontSize: 36),),
                   SizedBox(height: 100,),
                   Container(
                     width: 305,
                     height: 58,
                     child: ElevatedButton(
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>  PageTest1()));

                         },
                         child: Text('Test 1', style: fontputih.copyWith(fontSize: 20),),
                          style: ButtonStyle(

                           foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                           backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                               RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(24),

                               )
                           )
                       ),
                     ),
                   ),
                   SizedBox(height: 26,),
                   Container(
                     width: 305,
                     height: 58,
                     child: ElevatedButton(
                       onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>  PageTest2()));
                       },
                       child: Text('Test 2', style: fontputih.copyWith(fontSize: 20),),
                       style: ButtonStyle(

                           foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                           backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                               RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(24),

                               )
                           )
                       ),
                     ),
                   ),
                   SizedBox(height: 26,),
                   Container(
                     width: 305,
                     height: 58,
                     child: ElevatedButton(
                       onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>  PageTest3()));
                       },
                       child: Text('Test 3', style: fontputih.copyWith(fontSize: 20),),
                       style: ButtonStyle(

                           foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                           backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                               RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(24),

                               )
                           )
                       ),
                     ),
                   ),
                 ],
                ),
              ),
            ),
          )),
    );
  }
}
