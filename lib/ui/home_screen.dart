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
    "assets/slider_img.png",
    "assets/slider_img_two.png",
    "assets/slider_img.png",
    "assets/slider_img_two.png",
    "assets/slider_img.png",
    "assets/slider_img_two.png"
  ];
  final _addPageController = PageController(viewportFraction: 0.9);
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
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset("assets/dp.png")),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 40.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Good Evening",
                                style: TextStyle(
                                    fontFamily: 'Questrial',
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Shohan Shabbir",
                                style: TextStyle(
                                    fontFamily: 'Questrial',
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 100.w,
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Image.asset("assets/Notification.png"),
                        onPressed: () {

                        },
                      ),
                    ),
                    IconButton(
                      icon: Image.asset("assets/act_group.png"),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.only(top: 20),
                      child: Image.asset("assets/mosque.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: const Text(
                        "Ibadah",
                        style: TextStyle(fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 10),
                      child: const Text(
                        "Fazar at 03:55 AM (02:58:00)",
                        style: TextStyle(fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: const Text(
                        "Dhaka",
                        style: TextStyle(fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset("assets/map.png"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: const Text(
                        "What's New",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 30, right: 35),
                      child: const Text(
                        "See All",
                        style: TextStyle(fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 158.h,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Container(
                    // height: 158,
                    // width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      padEnds: false,
                      pageSnapping: true,
                      itemCount: _slideAddItems.length,
                      controller: _addPageController,
                      // scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                alignment: Alignment.topLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // color: Colors.white,
                                ),
                                child: Image.asset(_slideAddItems[index]),
                              ),
                              Positioned(
                                bottom: 15,
                                child: Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: const Text(
                                    "See your new offer >>",
                                    style: TextStyle(fontFamily: 'Questrial',
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      onPageChanged: (int index) {
                        _currentAddPageNotifier.value = index;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CirclePageIndicator(
                          itemCount: _slideAddItems.length,
                          currentPageNotifier: _currentAddPageNotifier,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      child: const Text(
                        "News",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 30),
                      child: const Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      height: 103.h,
                      width: MediaQuery.of(context).size.width - 60,
                      margin: EdgeInsets.only(right: 30),
                      child: ListView.builder(
                        itemCount: _newsItems.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (Buildercontext, int index) {
                          return Container(
                            //height: 103,
                            width: MediaQuery.of(context).size.width - 140,
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
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      color: Color(0xff262D96),
                                    ),
                                    height: double.maxFinite,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 6, left: 6, right: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Ukrainian officials claim",
                                            style: TextStyle(
                                                fontFamily: 'Questrial',
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const Text(
                                            "Moscow's forces are",
                                            style: TextStyle(
                                                fontFamily: 'Questrial',
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.left,
                                          ),
                                          const Text(
                                            "suffering 'huge losses'",
                                            style: TextStyle(
                                                fontFamily: 'Questrial',
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const Text(
                                            "as they bombard the",
                                            style: TextStyle(
                                                fontFamily: 'Questrial',
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const Text(
                                            "key .",
                                            style: TextStyle(
                                                fontFamily: 'Questrial',
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Column(
                                            // crossAxisAlignment: CrossAxisAlignment.end,
                                            // mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 6, left: 60),
                                                child: const Text(
                                                  "View Details",
                                                  style: TextStyle(
                                                    decoration: TextDecoration
                                                        .underline,
                                                    decorationColor:
                                                    Colors.indigo,
                                                    decorationThickness: 5,
                                                    fontFamily: 'Questrial',
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      child: const Text(
                        "My Offers",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 30),
                      child: const Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: 'Questrial',
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 163.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: _offersItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 163.w,
                        height: 163.h,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                _offersItems[index],
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      );
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
}
