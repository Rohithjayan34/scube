import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DeliveryCard extends StatefulWidget {
  const DeliveryCard({Key? key}) : super(key: key);

  @override
  State<DeliveryCard> createState() => _DeliveryCardState();
}

class _DeliveryCardState extends State<DeliveryCard> {
  String gender = "male";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Choose Delivery Location",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const Divider(
                thickness: 3,
                color: Color(0xffEFF5FF),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 50,
                  child: DottedBorder(
                      dashPattern: [6, 4],
                      color: Color(0xffFFCD2C),
                      strokeWidth: 3,
                      child: const Center(
                        child: Text(
                          "+ Add new address",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.7,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE5EDFC)),
                    child: RadioListTile(
                      subtitle: const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Plot No 4, HMDA Maitrivanam, Satyam Theatre Rd, beside Blue Fox Hotel, Kumar Basti, Srinivasa Nagar, Ameerpet, Hyderabad, Telangana 500038",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Hindustan factory",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SvgPicture.asset("assets/images/svgs/menu_2.svg")
                          ],
                        ),
                      ),
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE5EDFC)),
                    child: Column(
                      children: [
                        RadioListTile(
                          toggleable: true,
                          subtitle: const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Flexible(
                              child: Text(
                                "Plot No 4, HMDA Maitrivanam, Satyam Theatre Rd, beside Blue Fox Hotel, Kumar Basti, Srinivasa Nagar, Ameerpet, Hyderabad, Telangana 500038",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 22.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Preetham’s Home",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SvgPicture.asset(
                                    "assets/images/svgs/menu_2.svg")
                              ],
                            ),
                          ),
                          value: "female",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),
                        SizedBox(height: 20),
                        SvgPicture.asset(
                          "assets/images/svgs/expand.svg",
                          height: 30,
                          width: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
