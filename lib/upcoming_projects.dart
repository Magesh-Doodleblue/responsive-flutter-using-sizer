// import 'package:flutter/material.dart';

// class UpComingProjectWidget extends StatelessWidget {
//   const UpComingProjectWidget({
//     super.key,
//     required this.screenSize,
//     required this.isSmallScreen,
//   });

//   final Size screenSize;
//   final bool isSmallScreen;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 3,
//       child: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Container(
//           color: Colors.white,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FittedBox(
//                 child: DataTable(
//                   columns: const [
//                     DataColumn(
//                       label: Text(
//                         'Project',
//                         style: TextStyle(fontSize: 30.0),
//                       ),
//                     ),
//                     DataColumn(
//                       label: Text(
//                         'Start Date',
//                         style: TextStyle(fontSize: 30.0),
//                       ),
//                     ),
//                     DataColumn(
//                       label: Text(
//                         'End Date',
//                         style: TextStyle(fontSize: 30.0),
//                       ),
//                     ),
//                   ],
//                   rows: const [
//                     DataRow(cells: [
//                       DataCell(
//                         Text(
//                           'Food website',
//                           style: TextStyle(fontSize: 26),
//                         ),
//                       ),
//                       DataCell(
//                         Text(
//                           'jan',
//                           style: TextStyle(fontSize: 26),
//                         ),
//                       ),
//                       DataCell(
//                         Text(
//                           'Approved',
//                           style: TextStyle(fontSize: 26),
//                         ),
//                       ),
//                     ]),
//                   ],
//                   columnSpacing: 20.0,
//                   dividerThickness: 2,
//                   horizontalMargin: 18.0,
//                   headingRowColor: MaterialStateColor.resolveWith(
//                       (states) => Colors.black12),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Text(
//                 "Upcoming Projects",
//                 style: TextStyle(fontSize: 26),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
