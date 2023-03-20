// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class profileDetailsWidget extends StatelessWidget {
  const profileDetailsWidget({
    super.key,
    required this.screenSize,
    required this.isSmallScreen,
  });

  final Size screenSize;
  final bool isSmallScreen;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          color: Colors.white,
          height: screenSize.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper.png',
                width: isSmallScreen ? screenSize.width * 0.7 : 500,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text(
                'Welcome to your Profile',
                style: TextStyle(
                  fontSize: isSmallScreen ? 20 : 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isSmallScreen ? 12 : 18,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profileDetailsWidget(
                            screenSize: screenSize,
                            isSmallScreen: isSmallScreen),
                      ));
                },
                child: const Text('Click to view'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
