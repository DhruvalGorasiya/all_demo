import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetherapp/Model/weather_model.dart';
import 'package:wetherapp/Service/ApiCall.dart';
import '../../Service/weather_functions.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  void initState() {
    super.initState();
    log(Country.text);
    fetchWeather;
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
    Weather();
  }

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<WeatherModel>(
          future: fetchWeather(),
          builder: (context, spt) {
            if (spt.hasData) {
              return Stack(
                children: [
                  // VideoPlayer(_controller),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: height * 0.966,
                      width: width * 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: Center(
                                child: TextField(
                                  controller: Country,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.robotoMono(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              width: width * 0.85,
                              height: height * 0.06,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https:${spt.data?.current?.condition?.icon ?? ' '}',
                                  fit: BoxFit.cover,
                                  height: height * 0.13,
                                  width: width * 0.25,
                                ),
                                Text(
                                  '${now.day}\n${month(now.month)}',
                                  style: GoogleFonts.robotoMono(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      spt.data?.current?.tempC.toString() ?? '',
                                      style: GoogleFonts.robotoMono(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      width: width * 0.05,
                                      height: height * 0.03,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 5, color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  spt.data?.current?.condition?.text ?? '',
                                  style: GoogleFonts.lato(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  spt.data?.location?.region ?? '',
                                  style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Container(
                              color: Colors.transparent,
                              height: height * 0.56,
                              width: width * 1,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: height * 0.28,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height * 0.3,
                                          width: width * 0.9,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17.0),
                                            border: Border.all(
                                              width: 2,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.thermostat,
                                                        color: Colors.white,
                                                        size: 40,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        spt.data?.current?.tempF
                                                                .toString() ??
                                                            '',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 30,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    "Temprature",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.air,
                                                        color: Colors.white,
                                                        size: 40,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        spt.data?.current
                                                                ?.windKph
                                                                .toString() ??
                                                            '',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 30,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Wind speed',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .cloud_queue_rounded,
                                                        color: Colors.white,
                                                        size: 40,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        spt.data?.current?.cloud
                                                                .toString() ??
                                                            '',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 25,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Clouds',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .assistant_navigation,
                                                        color: Colors.white,
                                                        size: 35,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        spt.data?.current
                                                                ?.windDegree
                                                                .toString() ??
                                                            '',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 25,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Wind Degree',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: height * 0.003,
                                        width: width * 0.27,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "More Details",
                                        style: GoogleFonts.play(
                                            fontSize: 17, color: Colors.white),
                                      ),
                                      Container(
                                        height: height * 0.003,
                                        width: width * 0.27,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: height * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "Humidity",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Icon(
                                                Icons.water_drop,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "${spt.data?.current?.humidity}%",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 25,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "Visibillity",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Icon(
                                                Icons.remove_red_eye,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                spt.data?.current?.humidity
                                                        .toString() ??
                                                    '',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 25,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "Sunrise",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Icon(
                                                Icons.wb_sunny,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "${now.hour}:${now.minute}",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 25,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else if (spt.hasError) {
              return Text(spt.error.toString());
            }
            return const Center(
              child: CircularProgressIndicator(color: Colors.red),
            );
          },
        ),
      ),
    );
  }
}
