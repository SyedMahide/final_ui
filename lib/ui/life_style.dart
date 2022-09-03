import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LifeStyleScreen extends StatefulWidget {
  const LifeStyleScreen({Key? key}) : super(key: key);

  @override
  State<LifeStyleScreen> createState() => _LifeStyleScreenState();
}

class _LifeStyleScreenState extends State<LifeStyleScreen> {
  final _slideAddItems = [
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
  ];
  final _shopItems = [
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
    "assets/shop.png",
  ];

  final _weconItems = [
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
    "assets/wecon.png",
  ];
  final _addPageController = PageController();
  final _currentAddPageNotifier = ValueNotifier<int>(0);

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LifeStyle"),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/Search.png'),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Image.asset('assets/Notification.png'),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Image.asset('assets/act_group.png'),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSlidPageView(),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCircleIndicator(),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 28.h, left: 28.w),
                child: Text(
                  "Shops Of P2P",
                  style: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 106.h,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 17.w, top: 13.h),
                child: ListView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return shopListItem(index);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.h, left: 28.w),
                child: Text(
                  "Wecon Properties",
                  style: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 160.h,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 17.w, top: 13.h),
                child: ListView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return weconListItem(index);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.h, left: 28.w, ),
                child: Text(
                  "Partner Shop",
                  style: TextStyle(
                      fontFamily: 'Questrial',
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 106.h,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 17.w, top: 13.h),
                child: ListView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return shopListItem(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget weconListItem(int index) {
    return Container(
      width: 282.w,
      height: 160.h,
      margin: EdgeInsets.only(left: 11.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: Stack(
        children: [
          Image.asset(_weconItems[index],
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill),
        ],
      ),
    );
  }

  Widget shopListItem(int index) {
    return Container(
      width: 216.w,
      height: 106.h,
      margin: EdgeInsets.only(left: 11.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: Stack(
        children: [
          Image.asset(_shopItems[index],
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill),
          Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 12.w, top: 10.h),
                  child: Text(
                    "Gift Store",
                    style: TextStyle(
                        fontFamily: 'Questrial',
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.w, top: 10.h, right: 36.w),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis nisi sapien quis libero augue.",
                    style: TextStyle(
                        fontFamily: 'Questrial',
                        color: Colors.white,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildSlidPageView() {
    return Container(
      height: 158.h,
      margin: const EdgeInsets.only(left: 28, right: 28, top: 28),
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
