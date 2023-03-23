// import 'package:flutter/material.dart';

// class LeaveTakenWidget extends StatelessWidget {
//   const LeaveTakenWidget({
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
//           height: screenSize.height,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FittedBox(
//                 child: Table(
//                     defaultColumnWidth: const FixedColumnWidth(160.0),
//                     border: TableBorder.symmetric(
//                         inside: const BorderSide(width: 2, color: Colors.blue),
//                         outside:
//                             const BorderSide(width: 3, color: Colors.black)),
//                     children: [
//                       TableRow(children: [
//                         Column(children: const [
//                           Text(
//                             'Dates',
//                             style: TextStyle(fontSize: 30.0),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           )
//                         ]),
//                         Column(children: const [
//                           Text('Reason', style: TextStyle(fontSize: 30.0))
//                         ]),
//                         Column(children: const [
//                           Text('Status', style: TextStyle(fontSize: 30.0))
//                         ]),
//                       ]),
//                       TableRow(children: [
//                         Column(children: const [
//                           Text(
//                             'Jan 16',
//                             style: TextStyle(fontSize: 26),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           )
//                         ]),
//                         Column(children: const [
//                           Text(
//                             'Sick',
//                             style: TextStyle(fontSize: 26),
//                           )
//                         ]),
//                         Column(children: const [
//                           Text(
//                             'Approved',
//                             style: TextStyle(fontSize: 26),
//                           )
//                         ]),
//                       ]),
//                       TableRow(children: [
//                         Column(children: const [
//                           Text(
//                             'Mar 9',
//                             style: TextStyle(fontSize: 26),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           )
//                         ]),
//                         Column(children: const [
//                           Text(
//                             'Native',
//                             style: TextStyle(fontSize: 26),
//                           )
//                         ]),
//                         Column(children: const [
//                           Text(
//                             'Approved',
//                             style: TextStyle(fontSize: 26),
//                           )
//                         ]),
//                       ]),
//                       TableRow(children: [
//                         Column(children: const [
//                           Text(
//                             'Apr 20',
//                             style: TextStyle(fontSize: 26),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           )
//                         ]),
//                         Column(children: const [
//                           Text(
//                             'Sick',
//                             style: TextStyle(fontSize: 26),
//                           )
//                         ]),
//                         Column(children: const [
//                           Text(
//                             'UnApproved',
//                             style: TextStyle(fontSize: 26),
//                           )
//                         ]),
//                       ]),
//                     ]),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//               // ListView(children: <Widget>[
//               //   const Center(
//               //       child: Text(
//               //     'People-Chart',
//               //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               //   )),
//               //   DataTable(
//               //     columns: const [
//               //       DataColumn(
//               //           label: Text('Dates',
//               //               style: TextStyle(
//               //                   fontSize: 18, fontWeight: FontWeight.bold))),
//               //       DataColumn(
//               //           label: Text('Reason',
//               //               style: TextStyle(
//               //                   fontSize: 18, fontWeight: FontWeight.bold))),
//               //       DataColumn(
//               //           label: Text('Status',
//               //               style: TextStyle(
//               //                   fontSize: 18, fontWeight: FontWeight.bold))),
//               //     ],
//               //     rows: const [
//               //       DataRow(cells: [
//               //         DataCell(Text('Jan 16')),
//               //         DataCell(Text('Sick')),
//               //         DataCell(Text('Approved')),
//               //       ]),
//               //       DataRow(cells: [
//               //         DataCell(Text('Mar 5')),
//               //         DataCell(Text('Sick')),
//               //         DataCell(Text('Approved')),
//               //       ]),
//               //       DataRow(cells: [
//               //         DataCell(Text('Apr 10')),
//               //         DataCell(Text('Native')),
//               //         DataCell(Text('Approved')),
//               //       ]),
//               //       DataRow(cells: [
//               //         DataCell(Text('15')),
//               //         DataCell(Text('Peter')),
//               //         DataCell(Text('Scientist')),
//               //       ]),
//               //     ],
//               //   ),
//               // ]),