import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scube_test/screens/order_page.dart';
import 'package:scube_test/widgets/common_card_one.dart';
import 'package:scube_test/widgets/common_card_two.dart';

import 'model/order_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MyList> myList = [
    MyList(
      startTime: '07:00 PM',
      date: '9th July, 2021',
      orderId: 'AA121212121',
      endTime: '09:00 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/images/pngs/appbar_bg.png",
                fit: BoxFit.cover,
              ),
              const Positioned(
                  bottom: 5,
                  left: 10,
                  right: 15,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Fuel cost Rs.102.00 Per liter on July 09, 2021",
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
          leading: Stack(
            children: [
              Positioned(
                top: 25,
                left: 1,
                right: 15,
                child: SvgPicture.asset(
                  "assets/images/svgs/menu.svg",
                ),
              ),
            ],
          ),
          actions: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/svgs/bell.svg",
                      ),
                      const SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              "assets/images/svgs/profile_3.svg",
                            ),
                            Positioned(
                              top: 6,
                              left: 6,
                              child: SvgPicture.asset(
                                "assets/images/svgs/profile_2.svg",
                              ),
                            ),
                            Positioned(
                              right: 1,
                              child: SvgPicture.asset(
                                "assets/images/svgs/profile_1.svg",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            const CommonCardOne(
              image: "assets/images/svgs/card1_1.svg",
              icon: "assets/images/svgs/card1_2.svg",
              bigText: "30",
              title: "Total Orders placed",
              subtext: "Rs.5,000 Spent on this order",
              subTextColor: Color(0xffFFCD2C),
            ),
            const CommonCardOne(
              image: "assets/images/svgs/card2_1.svg",
              icon: "assets/images/svgs/card2_2.svg",
              bigText: "10",
              title: "Active orders",
              subtext: "Rs.5,000 Spent on this order",
              subTextColor: Color(0xff2EA1B8),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Card(
                elevation: 2,
                shadowColor: const Color(0xffCFF8FB),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 11,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 7,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            SvgPicture.asset(
                              "assets/images/svgs/card3_2.svg",
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height / 8,
                            ),
                            Center(
                                child: SvgPicture.asset(
                                  "assets/images/svgs/card3_1.svg",
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height / 24,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        "10",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text("Cancelled Orders",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(11, 26, 51, 0.48))),
                      const SizedBox(height: 10)
                    ],
                  ),
                ),
              ),
            ),
            const CommonCardTwo(
              image: "assets/images/svgs/card4_1.svg",
              icon: "assets/images/svgs/card4_2.svg",
              title: "Rs.12,000",
              subtitle: "Amount spent so far",
            ),
            const CommonCardTwo(
              image: "assets/images/svgs/card5_1.svg",
              icon: "assets/images/svgs/card5_2.svg",
              title: "Rs.5,000",
              subtitle: "Amount saved so far",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Orders",
                    style: TextStyle(
                      color: Color(0xff0B1A33),
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      var b = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrderPage()),
                      );
                      setState(() {
                        if (b != null) {
                          myList.add(b);
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 15,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 2.5,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffF9AF04)),
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffF9E17D)),
                      child: const Center(
                          child: Text(
                            "+ Create New Order",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
              child: Divider(
                thickness: 3,
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: myList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffEAF2FF),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xffD1E4E6),
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                myList[index].orderId,
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                myList[index].date,
                                style: const TextStyle(
                                  color: Color(0xff62789D),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    myList[index].startTime,
                                    style: const TextStyle(
                                      color: Color(0xff62789D),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    myList[index].endTime,
                                    style: const TextStyle(
                                      color: Color(0xff62789D),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 20,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .height / 8,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xffA4C9EE),
                                      border: Border.all(
                                          width: 2,
                                          color: const Color(
                                            0xff8FBDEA,
                                          ))),
                                  child: const Center(
                                      child: Text(
                                        "Approved",
                                        style: TextStyle(
                                            color: Color(0xff007CD6)),
                                      )),
                                ),
                              ),
                              const Icon(Icons.keyboard_arrow_up)
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
