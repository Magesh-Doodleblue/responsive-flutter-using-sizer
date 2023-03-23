import 'package:flutter/material.dart';

class OnGoingProjectWidget extends StatelessWidget {
  const OnGoingProjectWidget({
    Key? key,
    required this.screenSize,
    required this.isSmallScreen,
  }) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Table(
                    defaultColumnWidth: const FixedColumnWidth(160.0),
                    border: TableBorder.symmetric(
                        inside: const BorderSide(width: 2, color: Colors.blue),
                        outside:
                            const BorderSide(width: 3, color: Colors.black)),
                    children: [
                      TableRow(children: [
                        Column(children: const [
                          Text(
                            'Project',
                            style: TextStyle(fontSize: 30.0),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ]),
                        Column(children: const [
                          Text('Start Date', style: TextStyle(fontSize: 30.0))
                        ]),
                        Column(children: const [
                          Text('End Date', style: TextStyle(fontSize: 30.0))
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: const [
                          Text(
                            'Food website',
                            style: TextStyle(fontSize: 26),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ]),
                        Column(children: const [
                          Text(
                            'jan',
                            style: TextStyle(fontSize: 26),
                          )
                        ]),
                        Column(children: const [
                          Text(
                            'Approved',
                            style: TextStyle(fontSize: 26),
                          )
                        ]),
                      ]),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Project On Going",
                style: TextStyle(fontSize: 26),
              )
            ],
          ),
        ),
      ),
    );
  }
}
