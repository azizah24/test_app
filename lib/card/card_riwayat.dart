import 'package:flutter/material.dart';
import 'package:test_app/model/model_transaksi.dart';
import 'package:test_app/theme.dart';

class CardRiwayat extends StatelessWidget {
  final ModelTransaksi modelTransaksi;
  CardRiwayat(this.modelTransaksi);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Row(

          children: [
            Image.asset('assets/icon.png', width: 33, height: 33,),
            SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${modelTransaksi.id}', style: blackids.copyWith(fontSize: 13),),
                Text('${modelTransaksi.date}', style: blackidst.copyWith(fontSize: 10),),
              ],
            ),
            SizedBox(width: 100,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFF9A00),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('${modelTransaksi.rebate}', style: fontputih2.copyWith(fontSize: 11),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
