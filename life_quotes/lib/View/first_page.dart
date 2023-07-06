import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:life_quotes/View/listview.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:sizer/sizer.dart';

import '../service/var.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('Life Quotes');

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Life Quotes'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: collectionReference.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return const Text('Error occurred');
          } else if (snapshot.hasData) {
            final DocumentSnapshot documentSnapshot = snapshot.data!.docs[0];
            image = documentSnapshot['Images'];
            quotes = documentSnapshot['Quotes'];
            log(image.length.toString());
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 10.0),
                        color: Colors.black87,
                        height: height * 0.31,
                        child: PageView.builder(
                            itemCount: 3,
                            controller: _pageController,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 20.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      snapshot.data?.docs[0]['Images'][index],
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: AutoSizeText(
                                    snapshot.data?.docs[0]['Quotes'][index],
                                    wrapWords: true,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ),
                              );
                            },
                            onPageChanged: (int index) {
                              _currentPageNotifier.value = index;
                            }),
                      ),
                      Positioned(
                        left: 0.0,
                        right: 0.0,
                        bottom: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CirclePageIndicator(
                            itemCount: 3,
                            currentPageNotifier: _currentPageNotifier,
                          ),
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Listview();
                          },
                        ),
                      );
                    },
                    child: secondContainer(context, 'Most Popular'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
                    height: height * 0.25,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Quotes by Category'),
                            Text('Show All'),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Listview();
                                  },
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                bigContainer(context, Colors.blue, 'jii'),
                                bigContainer(context, Colors.yellow, 'jii'),
                                bigContainer(context, Colors.red, 'jii'),
                                bigContainer(context, Colors.purple, 'jii'),
                                bigContainer(context, Colors.orange, 'jii'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }

  Container secondContainer(context, String name) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
      height: height * 0.35,
      width: double.infinity,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 5.0,
        ),
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(name),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              smallContainer(context, Colors.blue, 'Love Quotes'),
              smallContainer(context, Colors.green, 'Swami\nVivekananda'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              smallContainer(context, Colors.yellow[800], 'Albert Einstein'),
              smallContainer(context, Colors.pink[400], 'Motivational'),
            ],
          ),
        ],
      ),
    );
  }

  Container smallContainer(context, Color? cColor, String name) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: width * 0.45,
      decoration: BoxDecoration(
        color: cColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(child: Text(name)),
    );
  }

  Padding bigContainer(context, Color? cColor, String name) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: height * 0.2,
        width: width * 0.6,
        decoration: BoxDecoration(
          color: cColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(name),
        ),
      ),
    );
  }
}
