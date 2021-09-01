import 'package:flutter/material.dart';
import 'package:test_app/model/model_transaksi.dart';
import 'package:test_app/theme.dart';

class CardTransaksi extends StatelessWidget {

  final ModelTransaksi modelTransaksi;

  CardTransaksi( this.modelTransaksi);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('ID Transaksi', style: abuids.copyWith(fontSize: 10),),
                SizedBox(width: 72,),
                Text('Rebate', style: abuids.copyWith(fontSize: 10),),
                SizedBox(width: 72,),
                Text('Tanggal', style: abuids.copyWith(fontSize: 10),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              children: [
                Text('${modelTransaksi.id}', style: abugelap.copyWith(fontSize: 10),),
                SizedBox(width: 72,),
                Text('${modelTransaksi.rebate}', style: hijaustyle.copyWith(fontSize: 10),),
                SizedBox(width: 75,),
                Text('${modelTransaksi.date}', style: hijaustyle.copyWith(fontSize: 10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
