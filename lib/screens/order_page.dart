import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:im_stepper/stepper.dart';

import '../model/order_model.dart';
import '../widgets/delivery_card.dart';
import '../widgets/order_details_card.dart';
import '../widgets/poc_card.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int activeStep = 0; // Initial step set to 5.

  int upperBound = 3;

  List<MyList> myList = [];

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
              ],
            ),
            leading: Stack(
              children: [
                Positioned(
                  top: 35,
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
                    padding: const EdgeInsets.only(top: 20.0),
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
                              Image.asset("assets/images/svgs/avatar.png"),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 3.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffE0F0FF),
                ),
                child: const Center(
                    child: Text(
                  "Your Orders",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Create New Order",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 5, bottom: 20),
              child: Text(
                "Enter the details.",
                style: TextStyle(
                  color: Color.fromRGBO(11, 26, 51, 0.48),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            IconStepper(
              activeStepColor: const Color(0xffFFCD2C),
              stepColor: Colors.black12,
              lineLength: 100,
              lineColor: Colors.grey,
              lineDotRadius: 0.3,
              activeStepBorderWidth: 0,
              activeStepBorderPadding: 0,
              enableNextPreviousButtons: false,
              icons: const [
                Icon(Icons.water_drop),
                Icon(
                  Icons.calendar_month_outlined,
                  size: 30,
                ),
                Icon(Icons.check_circle_outlined),
              ],
              activeStep: activeStep,
              onStepReached: (index) {
                setState(() {
                  activeStep = index;
                });
              },
            ),
            const OrderDetailsCard(),
            const DeliveryCard(),
            const PocCard(),
          ]),
        ),
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Go Back",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              InkWell(
                  onTap: () {
                    var c = MyList(
                      startTime: '08.00 AM',
                      date: '10th July, 2022',
                      endTime: '09.00 AM',
                      orderId: 'AA7383535833',
                    );
                    Navigator.pop(context, c);
                  },
                  child:
                      SvgPicture.asset("assets/images/svgs/confirm_button.svg"))
            ],
          ),
        ));
  }
}
