import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/App_color.dart';

class DriverCard extends StatefulWidget {
  const DriverCard({super.key});

  @override
  State<DriverCard> createState() => _DriverCardState();
}

class _DriverCardState extends State<DriverCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Container(
              width: 380,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: Colors.white,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            child: Container(
                              width: 350,
                              decoration: BoxDecoration(
                                color: AppColors.drivercardactive,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.zero,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '   Harshana Dissanayake',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(11.0),
                                          child: Text(
                                            '"Experienced and safety-focused driver with a flawlessddddddd driving record hfewihfeifhiefhefiheihfheuhfuhekfheikfhuehfejshefoefhifhehfheofoehfoifhfhand expertise in navigating diverse road conditions. Skilled in efficient route planning and adept at delivering exceptional customer service. Reliable team player with a strong commitment to on-time performance.ssssssssssssssssssss"',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                            // textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(flex: 3, child: Container())
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 75,
                          child: Image.asset(
                            'assets/DriverPic.png',
                            width: 160,
                            height: 250,
                            fit: BoxFit.fitHeight,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
