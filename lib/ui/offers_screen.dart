import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class OffersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OffersScreenState();
  }
}

class _OffersScreenState extends State<OffersScreen> {
  final _slideAddItems = [
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
  ];
  final _topOffersItems = [
    "assets/top_offers.png",
    "assets/top_offers.png",
    "assets/top_offers.png",
    "assets/top_offers.png",
    "assets/top_offers.png",
    "assets/top_offers.png",
  ];
  final _offersItem = [
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
    "assets/offer_banner.png",
  ];
  final _addPageController = PageController();
  final _currentAddPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offers",
          style: TextStyle(
              fontFamily: 'Questrial',
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400),),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/Notification.png'),
            onPressed: () {
              // do something
            },
          ),
          Container(
            margin: EdgeInsets.only(right: 28),
            child: IconButton(
              icon: Image.asset('assets/act_group.png'),
              onPressed: () {
                // do something
              },
            ),
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
                Container(
                  height: 158,
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
                  height: 45,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 28),
                      child: const Text(
                        "Top offers",
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
                  height: 163,
                  // width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: _topOffersItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 169,
                        height: 163,
                        margin: EdgeInsets.only(left: 28),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                _topOffersItems[index],
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
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 28),
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
                  height: 157,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: _offersItem.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 163,
                        height: 157,
                        margin: EdgeInsets.only(left: 28),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                _offersItem[index],
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
              ]),
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
