import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommonCardOne extends StatelessWidget {
  final String? image;
  final String? icon;
  final String? bigText;
  final String? title;
  final String? subtext;
  final Color subTextColor;

  const CommonCardOne(
      {Key? key,
      this.image,
      this.bigText,
      this.title,
      this.subtext,
      required this.subTextColor,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.width / 7,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    SvgPicture.asset(
                      icon!,
                      height: MediaQuery.of(context).size.height / 8,
                    ),
                    Center(
                        child: SvgPicture.asset(
                      image!,
                      height: MediaQuery.of(context).size.height / 24,
                    )),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Text(
                bigText!,
                style: const TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title!,
                      style: const TextStyle(
                          color: Color.fromRGBO(11, 26, 51, 0.48))),
                  const SizedBox(height: 10),
                  Text(
                    subtext!,
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: subTextColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
