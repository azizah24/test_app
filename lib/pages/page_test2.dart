
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/bottomnav.dart';
import 'package:test_app/theme.dart';
import 'dart:math' as math;

class PageTest2 extends StatelessWidget {
  const PageTest2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color(0xffFCF8F8),
        extendBody: true,
        appBar: AppBar(

          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
              icon: Image.asset('assets/backblue.png', width: 22, height: 22,),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                icon: Icon(Icons.notifications, color: birutest2, size: 22,),
                onPressed: (){},
              ),
            ),
          ],
          titleSpacing: 0,
          title: Text('PORTOFOLIO VENDOR', style: biru2style.copyWith(fontSize: 13), textAlign: TextAlign.start,),
          elevation: 0,
          centerTitle: false,
          backgroundColor: Color(0xffFCF8F8),

        ),
        bottomNavigationBar: Container(
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
                BottomNavigationBarItem(icon: Icon(Icons.chrome_reader_mode),
                    label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.swap_horiz),
                    label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.move_to_inbox),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.assessment),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.sports_motorsports),
                  label: '',
                ),

              ],

            ),
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              ListView(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 65,
                        backgroundColor: Color(0xffC7C7CC),
                        child: CircleAvatar(
                          radius: 63,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('assets/ciclre.png'),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('5.0', style: fontt.copyWith(fontSize: 16),),
                              Text('Rating', style: fontmade.copyWith(fontSize: 13),),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Text('5.0', style: fontt.copyWith(fontSize: 16),),
                              Text('Rating', style: fontmade.copyWith(fontSize: 13),),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Text('5.0', style: fontt.copyWith(fontSize: 16),),
                              Text('Rating', style: fontmade.copyWith(fontSize: 13),),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text('Dina Florist', style: fontt.copyWith(fontSize: 12),),
                  ),
                  SizedBox(height: 3,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text('Toko Bunga terbaiks se Indonesia Raya\nHarga Murah Produk Berkualitas', style: fontmade.copyWith(fontSize: 12),),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff3C3C43).withOpacity(0.18))
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('PORTOFOLIO', style: fontt.copyWith(fontSize: 13),),
                      )),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 502,
                      child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                        children: [
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/gambar1.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [
                                                Color(0xff202237),
                                                Color(0xff595FA0)
                                              ]
                                          ),
                                          borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/bunga2.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/bunga3.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/bunga3.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/gambar1.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/bunga2.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/gambar1.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/bunga3.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/bunga2.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/bunga2.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/gambar1.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            child: Stack(
                                children: [
                                  Image.asset('assets/bunga3.png'),
                                  Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.41)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Nama Customer' ,style: fontputih2.copyWith(fontSize: 10),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 38,
                                        height: 13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff202237),
                                                  Color(0xff595FA0)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star, color: Color(0xffDFB300), size: 10,),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: Text('5.0', style: fontputih1.copyWith(fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}
