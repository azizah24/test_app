
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/bottomnav.dart';
import 'package:test_app/theme.dart';

class PageTest1 extends StatelessWidget {
  const PageTest1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCF8F8),
      appBar: AppBar(
        
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            icon: Image.asset('assets/backbutton.png', width: 22, height: 22,),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Image.asset('assets/bag.png', width: 28, height: 22,),
              onPressed: (){},
            ),
          ),
        ],
        titleSpacing: 0,
        title: Text('LACAK PESANAN', style: appbarstyle.copyWith(fontSize: 13), textAlign: TextAlign.start,),
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
                BottomNavigationBarItem(icon: Icon(Icons.assignment),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.swap_horiz),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.notifications_none),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.person_outline),
                  label: '',
                ),

              ],

            ),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/map.png"),
                        fit: BoxFit.cover
                    )
                ),),
              Image.asset('assets/tracking.png', width: 320, height: 320,),
              SizedBox.expand(
                child: DraggableScrollableSheet(
                    initialChildSize: 0.28,
                    minChildSize: 0.28,
                    maxChildSize: 0.45,
                    expand: false,
                    builder: (BuildContext context, s){
                      return Container(

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1
                              )
                            ]
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                height: 4.31,
                                width: 103.27,
                                decoration: BoxDecoration(
                                  color: Color(0xff47623F),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: ListView(
                                controller: s,
                                children: [
                                  SizedBox(height: 11.97,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          child: Image.asset('assets/fotoavatar.png', width: 130, height: 130,),
                                        ),
                                        ClipRRect(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('David Morel', style: blackfontstyle.copyWith(fontSize: 17),),
                                              SizedBox(height: 10,),
                                              Text('B 1201 FA', style: greenfontstyle.copyWith(fontSize: 16),)
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Spacer(),
                                        Spacer(),
                                        SizedBox(width: 40,),
                                        ClipRRect(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff3AB648),
                                                  Color(0xff526430)
                                                ]
                                              ),

                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 0.0,
                                                  color: Color(0xff4E60FF).withOpacity(0.25),
                                                  blurRadius: 2,
                                                  offset: Offset(2, 2),

                                                )
                                              ]
                                            ),
                                            width: 77,
                                            height: 77,
                                            child: Padding(
                                              padding: const EdgeInsets.all(21),
                                              child: Image.asset('assets/mark_chat_unread.png', width: 36,height: 36,),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 54.0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset('assets/clock.png', width: 24, height: 24,),
                                            SizedBox(height: 10,),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xff898EBC),
                                                  shape: BoxShape.circle,
                                              ),
                                              width: 4,
                                              height: 4,
                                            ),
                                            SizedBox(height: 10,),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xff898EBC),
                                                shape: BoxShape.circle,
                                              ),
                                              width: 5,
                                              height: 5,
                                            ),
                                            SizedBox(height: 10,),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xff898EBC),
                                                shape: BoxShape.circle,
                                              ),
                                              width: 6,
                                              height: 6,
                                            ),
                                            SizedBox(height: 10,),
                                            Image.asset('assets/pin.png', width: 24, height: 24,)
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        ClipRRect(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Status', style: regfontstyle.copyWith(fontSize: 14),),
                                              SizedBox(height: 4,),
                                              Text('Sedang mengambil barang', style: blackfontstyle.copyWith(fontSize: 15),),
                                              SizedBox(height: 40,),
                                              Text('Alamat Anda',  style: regfontstyle.copyWith(fontSize: 14),),
                                              SizedBox(height: 4,),
                                              Text('Taman Indah Dago No. 162',  style: blackfontstyle.copyWith(fontSize: 15),),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24),
                                    child: Text('Pesanan', style: blackmedstyle.copyWith(fontSize: 14),),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(

                                    children: [
                                      Image.asset('assets/staw.png', width: 130, height: 130,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Stawberry', style: blackintermedstyle.copyWith(fontSize: 15),),
                                          SizedBox(height: 4,),
                                          Text('100 Gram', style: greyinterstyle.copyWith(fontSize: 11),),
                                          SizedBox(height: 4,),
                                          Text('Rp75.000', style: regfontstyle.copyWith(fontSize: 13),)
                                        ],
                                      ),
                                      SizedBox(width: 120,),
                                      Text('2 Item', style: blackinterboldstyle.copyWith(fontSize: 12),)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24),
                                    child: Text('Catatan Item', style: blackmedstyle.copyWith(fontSize: 11),),
                                  ),
                                  SizedBox(height: 3,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24, right: 24),
                                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .',
                                    style: greypopstyle.copyWith(fontSize: 10), textAlign: TextAlign.justify,),
                                  ),
                                  SizedBox(height: 14,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24, right: 24),
                                    child: Container(
                                      width: 380,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(color: Colors.black.withOpacity(0.1)),
                                      ),
                                    )
                                  ),
                                  SizedBox(height: 14,),
                                  Row(

                                    children: [
                                      Image.asset('assets/staw.png', width: 130, height: 130,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Nanas', style: blackintermedstyle.copyWith(fontSize: 15),),
                                          SizedBox(height: 4,),
                                          Text('100 Gram', style: greyinterstyle.copyWith(fontSize: 11),),
                                          SizedBox(height: 4,),
                                          Text('Rp75.000', style: regfontstyle.copyWith(fontSize: 13),)
                                        ],
                                      ),
                                      SizedBox(width: 120,),
                                      Text('2 Item', style: blackinterboldstyle.copyWith(fontSize: 12),)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24),
                                    child: Text('Catatan Item', style: blackmedstyle.copyWith(fontSize: 11),),
                                  ),
                                  SizedBox(height: 3,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24, right: 24),
                                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .',
                                      style: greypopstyle.copyWith(fontSize: 10), textAlign: TextAlign.justify,),
                                  ),
                                  SizedBox(height: 14,),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 24, right: 24),
                                      child: Container(
                                        width: 380,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(color: Colors.black.withOpacity(0.1)),
                                        ),
                                      )
                                  ),
                                  SizedBox(height: 14,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24),
                                    child: Text('Catatan Pesanan', style: blackmedstyle.copyWith(fontSize: 14),),
                                  ),
                                  SizedBox(height: 6,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24, right: 24),
                                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .',
                                      style: greypopstyle.copyWith(fontSize: 11), textAlign: TextAlign.justify,),
                                  ),
                                  SizedBox(height: 80,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: 10,),

            ],
          ),
        )
    );
  }
}
