// import 'package:flutter/material.dart';

// import '../constant/textstyle_constant.dart';
// import '../view_models/voucher_view_models.dart';

// class DetailRewardWidget extends StatelessWidget {
//   final String product;
//   final String benefit;
//   final int cost;

//    DetailRewardWidget(
//       {super.key,
//       required this.product,
//       required this.benefit,
//       required this.cost});
// final voucher = VoucherViewModel.vouchers?.data;
//   @override
//   Widget build(BuildContext context) {
    

   
//     return Container(
//       child: Card(
//         margin: const EdgeInsets.symmetric(
//           horizontal: 12,
//           vertical: 8,
//         ),
//         child: SizedBox(
//           height: 210,
//           child: Column(
//             children: [
//               Image.asset('assets/images/photobox.png'),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(20, 20, 15, 11),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         Text(
//                           voucher?.product ?? '',
//                           style: TextStyleConst.description4,
//                         ),
//                         const SizedBox(height: 5),
//                         Text(
//                           voucher?.benefit ?? '',
//                           style: TextStyleConst.heading5WithColor(Colors.black),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Image.asset(
//                           'assets/icons/coin.png',
//                           scale: 4,
//                         ),
//                         const SizedBox(width: 9),
//                         Text(
//                           voucher?.cost.toString() ?? '',
//                           style: TextStyleConst.heading4WithColor(
//                               const Color(0xffB26801)),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
