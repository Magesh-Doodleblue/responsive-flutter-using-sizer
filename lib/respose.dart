import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            // Initialize SizerUtil with the default constructor
            SizerUtil sizerUtil = SizerUtil();
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'My App',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: MyHomePage(sizerUtil),
            );
          },
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final SizerUtil sizerUtil;

  const MyHomePage(this.sizerUtil, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Header',
                    style: TextStyle(fontSize: 12.sp, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.white,
                      height: 45.h,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 10.h,
                              color: Colors.blue,
                              child: Center(
                                child: Text(
                                  'Box 1',
                                  style: TextStyle(
                                      fontSize: 7.sp, color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              height: 15.h,
                              color: Colors.red,
                              child: Center(
                                child: Text(
                                  'Box 2',
                                  style: TextStyle(
                                      fontSize: 8.sp, color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              height: 20.h,
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  'Box 3',
                                  style: TextStyle(
                                      fontSize: 9.sp, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          'Main Content',
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Footer',
                    style: TextStyle(fontSize: 12.sp, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
