import 'package:final_ui/ui/life_style.dart';
//import 'package:final_ui/ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import 'book_meetings_screen.dart';
import 'card_screen.dart';
import 'events_screen.dart';

class ExploreScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExploreScreenState();
  }
}

class _ExploreScreenState extends State<ExploreScreen> {
  final _slideAddItems = [
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
    "assets/ad.png",
  ];

  final _addPageController = PageController();
  final _currentAddPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Explore",
          style: TextStyle(
              fontFamily: 'Questrial',
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400),
        ),
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
              Container(
                height: 325,
                width: 325,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GridView(
                    // ignore: sort_child_properties_last
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height - 784,
                            width: 325,
                            child: InkWell(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff4048BF),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset("assets/meeting.png"),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => BookingMeetings()),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 6),
                            child: const Text(
                              "Meetings",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Questrial",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height - 784,
                            width: 325,
                            child: InkWell(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff4048BF),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset("assets/events.png"),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => EventsScreen()),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 6),
                            child: const Text(
                              "Events",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Questrial",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height - 784,
                            width: 325,
                            child: InkWell(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff4048BF),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset("assets/card.png"),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => CardScreen()),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 6),
                            child: const Text(
                              "Card",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Questrial",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height - 784,
                            width: 325,
                            child: InkWell(
                              onTap: () {

                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff4048BF),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset("assets/life.png"),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => LifeStylePage()));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 6),
                            child: const Text(
                              "LifeStyle",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Questrial",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 40,
                            crossAxisSpacing: 10),
                  ),
                ),
              ),
            ],
          ),
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
