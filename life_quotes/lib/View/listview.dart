import 'package:auto_size_text/auto_size_text.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:life_quotes/service/var.dart';
import 'package:sizer/sizer.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 3.w),
            child: Container(
              height: 25.h,
              width: 80.w,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  const BoxShadow(
                    blurRadius: 5.0,
                    color: Colors.black38,
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    quotes[index],
                    maxFontSize: 20,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (!read.contains(quotes[index])) {
                            read.add(
                              quotes[index],
                            );
                          } else {
                            read.remove(
                              quotes[index],
                            );
                          }
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.done_all,
                          color: read.contains(quotes[index])
                              ? Colors.green
                              : Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (!fav.contains(quotes[index])) {
                            fav.add(
                              quotes[index],
                            );
                          } else {
                            fav.remove(
                              quotes[index],
                            );
                          }
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.star,
                          color: fav.contains(quotes[index])
                              ? Colors.yellow
                              : Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (quotes[index] == "") {
                            print('enter text');
                          } else {
                            print(quotes[index].toString());
                            FlutterClipboard.copy(quotes[index].toString())
                                .then((value) => print('copied'));
                          }
                        },
                        icon: Icon(
                          Icons.copy,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
