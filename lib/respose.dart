// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';

// import 'leave_taken.dart';
// import 'ongoing_project.dart';
// import 'profile_details_widget.dart';
// import 'upcoming_projects.dart';

// class MyDesktopUI extends StatefulWidget {
//   const MyDesktopUI({Key? key}) : super(key: key);

//   @override
//   _MyDesktopUIState createState() => _MyDesktopUIState();
// }

// class _MyDesktopUIState extends State<MyDesktopUI> {
//   bool _showMenu = false;
//   bool _showProfile = false;
//   bool _showUpComingProjects = false;
//   bool _showOnGoingProjects = false;
//   bool _showLeaveTaken = false;
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     final isSmallScreen = screenSize.width < 600;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('OnBoarding Page'),
//         leading: isSmallScreen
//             ? IconButton(
//                 icon: const Icon(Icons.menu),
//                 onPressed: () {
//                   setState(() {
//                     _showMenu = !_showMenu;
//                   });
//                 },
//               )
//             : null,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   if (!isSmallScreen || _showMenu)
//                     Expanded(
//                       flex: 2,
//                       child: Container(
//                         color: Colors.grey[200],
//                         height: screenSize.height,
//                         child: StreamBuilder<Object>(
//                             stream: null,
//                             builder: (context, snapshot) {
//                               return Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   const SizedBox(
//                                     height: 40,
//                                   ),
//                                   const Text(
//                                     'Menu',
//                                     style: TextStyle(fontSize: 20),
//                                   ),
//                                   const SizedBox(height: 20),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           _showLeaveTaken = false;
//                                           _showOnGoingProjects = false;
//                                           _showProfile = true;
//                                           _showUpComingProjects = false;
//                                         });
//                                       },
//                                       child: const Text('Profile Details'),
//                                     ),
//                                   ),
//                                   const SizedBox(height: 10),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           _showLeaveTaken = false;
//                                           _showOnGoingProjects = false;
//                                           _showProfile = false;
//                                           _showUpComingProjects = true;
//                                         });
//                                       },
//                                       child: const Text('Upcoming Projects'),
//                                     ),
//                                   ),
//                                   const SizedBox(height: 10),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           _showLeaveTaken = false;
//                                           _showOnGoingProjects = true;
//                                           _showProfile = false;
//                                           _showUpComingProjects = false;
//                                         });
//                                       },
//                                       child: const Text('OnGoing Project'),
//                                     ),
//                                   ),
//                                   const SizedBox(height: 10),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           _showLeaveTaken = true;
//                                           _showOnGoingProjects = false;
//                                           _showProfile = false;
//                                           _showUpComingProjects = false;
//                                         });
//                                       },
//                                       child: const Text('Leave Taken'),
//                                     ),
//                                   ),
//                                 ],
//                               );
//                             }),
//                       ),
//                     ),
//                   if (_showProfile)
//                     profileDetailsWidget(
//                         screenSize: screenSize, isSmallScreen: isSmallScreen),
//                   if (_showLeaveTaken)
//                     LeaveTakenWidget(
//                         screenSize: screenSize, isSmallScreen: isSmallScreen),
//                   if (_showOnGoingProjects)
//                     OnGoingProjectWidget(
//                         screenSize: screenSize, isSmallScreen: isSmallScreen),
//                   if (_showUpComingProjects)
//                     UpComingProjectWidget(
//                         screenSize: screenSize, isSmallScreen: isSmallScreen),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
