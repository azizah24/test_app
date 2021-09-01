
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/bottomnav.dart';
import 'package:test_app/card/card_riwayat.dart';
import 'package:test_app/card/card_transaksi.dart';
import 'package:test_app/model/model_transaksi.dart';
import 'package:test_app/theme.dart';
import 'dart:ui' as ui;
class PageTest3 extends StatelessWidget {
  const PageTest3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFCF8F8),
        bottomNavigationBar: Container(
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(7.0),
              bottomRight: Radius.circular(7.0),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(7.0),
              bottomRight: Radius.circular(7.0),
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Color(0xffC6C4C4),
              unselectedItemColor: Color(0xffC6C4C4),
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Image.asset('assets/task.png', width: 24, height: 24,),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.restore),
                  label: '',
                ),

              ],

            ),
          ),
        ),
        appBar: AppBar(

          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
              icon: Image.asset('assets/backbuttonoren.png', width: 22, height: 22,),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          actions: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return ui.Gradient.linear(
                  Offset(4.0, 24.0),
                  Offset(24.0, 4.0),
                  [
                    Color(0xff53B2FC),
                    Color(0xff096BB7),
                  ],
                );
              },
              child: IconButton(
                icon: Icon(Icons.assessment,),
                onPressed: (){},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                icon: Image.asset('assets/notifbadge.png',width: 22, height: 22,),
                onPressed: (){},
              ),
            ),
          ],
          titleSpacing: 0,
          title: Text('FINANSIAL', style: appbarstyle.copyWith(fontSize: 13), textAlign: TextAlign.start,),
          elevation: 0,
          centerTitle: false,
          backgroundColor: Color(0xffFCF8F8),

        ),
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color(0xffECE8E8).withOpacity(0.35),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.03),
                                  blurRadius: 2,
                                  offset: Offset(0,10),

                                )
                              ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('TOTAL BONUS', style: orenstyle.copyWith(fontSize: 13),),
                                SizedBox(height: 5,),
                                Text('Rp 5.000.000,00', style: abubonuss.copyWith(fontSize: 22),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.03),
                                  blurRadius: 2,
                                  offset: Offset(0,10),

                                )
                              ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('PENDING BONUS', style: orenstyle.copyWith(fontSize: 13),),
                                SizedBox(height: 5,),
                                Text('Rp 50.000,00', style: abubonuss.copyWith(fontSize: 22),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Daftar Rebate', style: abujudul.copyWith(fontSize: 11),),
                                    SizedBox(width: 50,),
                                    Container(
                                      width: 78,
                                      height: 26,
                                      child: ElevatedButton(
                                        onPressed: (){  },
                                        child: Text('Semua', style: fontputih1.copyWith(fontSize: 9),),
                                        style: ButtonStyle(

                                            foregroundColor: MaterialStateProperty.all<Color>(Color(0xffFF9A00)),
                                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xffFF9A00)),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(6),

                                                )
                                            )
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 78,
                                      height: 26,
                                      child: ElevatedButton(
                                        onPressed: (){  },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Filter', style: fontputih.copyWith(fontSize: 9),),
                                              Image.asset('assets/options.png', width: 10, height: 10,)
                                            ],
                                          ),
                                        ),
                                        style: ButtonStyle(
                                            foregroundColor: MaterialStateProperty.all<Color>(birus),
                                            backgroundColor: MaterialStateProperty.all<Color>(birus),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(6),

                                                )
                                            )
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 380,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: Colors.black.withOpacity(0.1)),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  CardTransaksi(
                                    ModelTransaksi(
                                      id: '#EC1201211',
                                      rebate: 'Rp. 150.000',
                                      date: '14 Juli 2021'
                                    )
                                  ),
                                  SizedBox(height: 20,),
                                  CardTransaksi(
                                      ModelTransaksi(
                                          id: '#EC1201211',
                                          rebate: 'Rp 150.000',
                                          date: '14 Juli 2021'
                                      )
                                  ),
                                  SizedBox(height: 20,),
                                  CardTransaksi(
                                      ModelTransaksi(
                                          id: '#EC1201211',
                                          rebate: 'Rp. 150.000',
                                          date: '14 Juli 2021'
                                      )
                                  ),
                                  SizedBox(height: 20,),
                                  CardTransaksi(
                                      ModelTransaksi(
                                          id: '#EC1201211',
                                          rebate: 'Rp. 150.000',
                                          date: '14 Juli 2021'
                                      )
                                  ),
                                  SizedBox(height: 20,),
                                  CardTransaksi(
                                      ModelTransaksi(
                                          id: '#EC1201211',
                                          rebate: 'Rp. 150.000',
                                          date: '14 Juli 2021'
                                      )
                                  ),
                                  SizedBox(height: 20,),
                                  CardTransaksi(
                                      ModelTransaksi(
                                          id: '#EC1201211',
                                          rebate: 'Rp. 150.000',
                                          date: '14 Juli 2021'
                                      )
                                  ),
                                  SizedBox(height: 20,)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text('Riwayat Rebate', style: orenstyle.copyWith(fontSize: 13),),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      SizedBox(height: 10,),
                                      CardRiwayat(
                                          ModelTransaksi(
                                              id: '#REBATEC12021',
                                              rebate: 'Rp 150.000',
                                              date: '20 Juli 2021'
                                          )
                                      ),
                                      SizedBox(height: 20,),
                                      CardRiwayat(
                                          ModelTransaksi(
                                              id: '#REBATEC12021',
                                              rebate: 'Rp 150.000',
                                              date: '20 Juli 2021'
                                          )
                                      ),
                                      SizedBox(height: 20,),
                                      CardRiwayat(
                                          ModelTransaksi(
                                              id: '#REBATEC12021',
                                              rebate: 'Rp 150.000',
                                              date: '20 Juli 2021'
                                          )
                                      ),
                                      SizedBox(height: 20,),
                                      CardRiwayat(
                                          ModelTransaksi(
                                              id: '#REBATEC12021',
                                              rebate: 'Rp 150.000',
                                              date: '20 Juli 2021'
                                          )
                                      ),
                                      SizedBox(height: 20,),
                                    ],
                                  ),
                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 215),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        width: 363,
                                        height: 55,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff53B2FC),
                                                  Color(0xff127CCE),
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white.withOpacity(0.60),
                                                blurRadius: 2,
                                                offset: Offset(0,60),

                                              )
                                            ]
                                        ),
                                        child: Center(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 60),
                                                child: Text('Complain', style: fontputih3.copyWith(fontSize: 15), textAlign: TextAlign.center,),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 10),
                                                child: Icon(Icons.arrow_forward_outlined, color: Colors.white,),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
