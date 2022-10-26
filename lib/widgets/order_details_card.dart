import 'package:flutter/material.dart';

class OrderDetailsCard extends StatefulWidget {
  const OrderDetailsCard({Key? key}) : super(key: key);

  @override
  State<OrderDetailsCard> createState() => _OrderDetailsCardState();
}

class _OrderDetailsCardState extends State<OrderDetailsCard> {
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
                "Order Details",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Color(0xffF6F6F6),
                child: TextFormField(
                  readOnly: true,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff0B1A33)),
                  initialValue: "3256",
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFAC324)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFAC324),
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFAC324),
                        ),
                      ),
                      // border: UnderlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.red),
                      // ),
                      labelText: 'Order ID',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff0C1D39))),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                color: const Color(0xffF6F6F6),
                child: TextFormField(
                  readOnly: true,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff0B1A33)),
                  initialValue: "Normal Delivery",
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFAC324)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFAC324),
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFAC324),
                        ),
                      ),
                      labelText: 'Select Order Type',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff0C1D39))),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                color: const Color(0xffF6F6F6),
                child: TextFormField(
                  readOnly: true,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff0B1A33)),
                  initialValue: "Select Delivery Date",
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(18),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffFAC324)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFAC324),
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFAC324),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                color: const Color(0xffF6F6F6),
                child: TextFormField(
                  readOnly: true,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff0B1A33)),
                  initialValue: "Select Delivery Time",
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(18),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffFAC324)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFAC324),
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFAC324),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                color: const Color(0xffF6F6F6),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  readOnly: false,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff0B1A33)),
                  initialValue: "Enter Fuel Qty ( in Lts)",
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(18),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffFAC324)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFAC324),
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFAC324),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 20),
                child: Text("Present Fuel Price ( 95 /- Rs)"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
