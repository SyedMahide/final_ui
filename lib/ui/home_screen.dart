import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _slideAddItems = [
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
  ];
  final _addPageController = PageController();
  final _currentAddPageNotifier = ValueNotifier<int>(0);
  final _newsItems = [
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
    "assets/news.png",
  ];

  final _offersItems = [
    "assets/offer.png",
    "assets/offer.png",
    "assets/offer.png",
    "assets/offer.png",
    "assets/offer.png",
    "assets/offer.png",
    "assets/offer.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.w),
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/dp.png",
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fill),
                ),
                Container(
                  height: 45.h,
                  margin: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Evening",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Shohan Shabbir",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          /* IconButton(
            icon: Image.asset('assets/Search.png'),
            onPressed: () {
              // do something
            },
          ),*/
          IconButton(
            icon: Image.asset('assets/Notification.png'),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Image.asset('assets/Group.png'),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 30.w, top: 40.h),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 25.w,
                      child: Image.asset("assets/mosque.png",
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.fill),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      child: Text(
                        "Ibadah",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      child: Text(
                        "Ibadah",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      height: 23.h,
                      width: 20.w,
                      margin: EdgeInsets.only(left: 10.w, right: 30.w),
                      child: Image.asset("assets/map.png",
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.fill),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fazr at 03:55 AM (02:58:00)",
                      style: TextStyle(
                          fontFamily: 'Questrial',
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 34.h,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "What’s New",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 10.w, right: 30.w),
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 158.h,
                  width: MediaQuery.of(context).size.width,
                  child: _buildSlidPageView(),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCircleIndicator(),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "News",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 10.w, right: 30.w),
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 103.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 7,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return newsListItem(index);
                    },
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "My Offers",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 10.w, right: 30.w),
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  height: 163.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 7,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return offersListItem(index);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget offersListItem(int index) {
    return Container(
      width: 163.w,
      height: 163.h,

      margin: EdgeInsets.only(right: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: Stack(
        children: [
          Image.asset(_offersItems[index],
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill),
        ],
      ),
    );
  }

  Widget newsListItem(int index) {
    return Container(
      width: 242.w,
      height: 103.h,
      margin: EdgeInsets.only(right: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(

        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              height: 103.h,
              width: 91.w,
              child: Image.asset(_newsItems[index],
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill),
            ),
            Container(
              child: Container(
                height: double.maxFinite,
                margin: EdgeInsets.all(9.w),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        // "Ukrainian officials claim Moscow's forces are suffering 'huge losses' as they bombard the key .",
                        "Ukrainian officials ",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),

                    Spacer(),
                    /*Row(
                      children: [
                        Spacer(),
                        Container(
                          child: Text(
                            "Details",
                            style: TextStyle(
                                fontFamily: 'Questrial',
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),*/
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildSlidPageView() {
    return Container(
      height: 158.h,
      width: 244.w,
      child: PageView.builder(
          itemCount: _slideAddItems.length,
          controller: _addPageController,
          itemBuilder: (BuildContext context, int index) {
            return addSlider(index);
          },
          onPageChanged: (int index) {
            _currentAddPageNotifier.value = index;
          }),
    );
  }

  _buildCircleIndicator() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: _slideAddItems.length,
          currentPageNotifier: _currentAddPageNotifier,
        ),
      ),
    );
  }

  Widget addSlider(int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Image.asset(_slideAddItems[index],
          height: double.infinity, width: double.infinity, fit: BoxFit.fill),
    );
  }
}
