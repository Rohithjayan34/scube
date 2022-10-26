import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PocCard extends StatefulWidget {
  const PocCard({Key? key}) : super(key: key);

  @override
  State<PocCard> createState() => _PocCardState();
}

class _PocCardState extends State<PocCard> {
  String poc = "male";

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
                "POC Details",
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
                          "+ Add new POC",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 5.2,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE5EDFC)),
                    child: RadioListTile(
                      subtitle: const Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Site manager at Hitech City,\nMobile: 77788 99456 \nEmail: preetham@scube.me",
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
                              "Preetham",
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
                      groupValue: poc,
                      onChanged: (value) {
                        setState(() {
                          poc = value.toString();
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: MediaQuery.of(context).size.height / 5.2,
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
                                "Manager at Kukatpally,\nMobile : 9896549874\nEmail ID : Pradeep123@gmail.com",
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
                                  "Pradeep Kumar",
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
                          groupValue: poc,
                          onChanged: (value) {
                            setState(() {
                              poc = value.toString();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SvgPicture.asset(
                    "assets/images/svgs/expand.svg",
                    height: 30,
                    width: 30,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
