import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Homepage",
          style: TextStyle(
            fontSize: 10.sp,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 10.h,
            width: 40.w,
            color: Colors.white,
            child: const Text(
              "Container Text",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Text(
              'Recommended',
              style: TextStyle(fontSize: 5.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 2.h),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 20.h,
                  width: 100.w,
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 30.w,
                        decoration: const BoxDecoration(
                          border: Border.symmetric(
                            vertical: BorderSide(
                              width: 23,
                            ),
                            horizontal: BorderSide(
                              width: 23,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Video Title',
                              style: TextStyle(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Channel Name - K views - 1 day ago',
                              style: TextStyle(fontSize: 3.5.sp),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(
                                  Icons.star_border,
                                  size: 4.h,
                                ),
                                Icon(
                                  Icons.watch_later,
                                  size: 4.h,
                                ),
                                Icon(
                                  Icons.share,
                                  size: 4.h,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  size: 4.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
