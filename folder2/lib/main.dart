import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: fanApp(),
  ));
}

class fanApp extends StatelessWidget {
  const fanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: height * 0.08,
                      width: width * 1,
                      color: Colors.black87,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.folder_open_outlined,
                            color: Colors.blue,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(color: Colors.grey[850], height: 0, thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: height * 0.11,
                      width: width * 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      color: Colors.amberAccent,
                                      width: 2),
                                ),
                                height: 80,
                                width: width * 0.16,
                                child: Center(
                                    child: Text(
                                  "93%",
                                  style: TextStyle(color: Colors.amberAccent),
                                )),
                              ),
                            ),
                            SizedBox(width: width * 0.018),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Storage",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: height * 0.01),
                                Row(
                                  children: [
                                    Text(
                                      "110.74GB",
                                      style:
                                          TextStyle(color: Colors.amberAccent),
                                    ),
                                    Text(
                                      "/ 118.49GB",
                                      style:
                                          TextStyle(color: Colors.amberAccent),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.304,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white54,
                              size: height * 0.025,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[850],
                    height: height * 0.005,
                    thickness: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: height * 0.07,
                      width: width * 1,
                      child: Row(
                        children: [
                          Text(
                            "Internal storage",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.white54,
                            size: height * 0.025,
                          ),
                          SizedBox(
                            width: width * 0.421,
                          ),
                          Icon(
                            Icons.widgets_outlined,
                            color: Colors.white54,
                            size: height * 0.03,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white54,
                            size: height * 0.03,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[850],
                    height: height * 0.005,
                    thickness: 2,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          folderIcon(context,
                              time: "4 items | 28/01/20 11:08 AM",
                              name: "Android"),
                          Divider(
                              color: Colors.grey[850], height: 0, thickness: 2),
                          folderIcon(context,
                              time: "1 item | 25/12/19 8:19 AM",
                              name: "Biodata"),
                          Divider(
                              color: Colors.grey[850], height: 0, thickness: 2),
                          folderIcon(context,
                              time: "2 items | 27/01/20 1:12 PM",
                              name: "browser"),
                          Divider(
                              color: Colors.grey[850], height: 0, thickness: 2),
                          folderIcon(context,
                              time: "1 item | 14/11/19 8:09 PM",
                              name: "com.activision.callofduty.shooter"),
                          Divider(
                              color: Colors.grey[850], height: 0, thickness: 2),
                          folderIcon(context,
                              time: "1 item | 25/10/19 1:29 PM",
                              name: "com.facebook.orca"),
                          Divider(
                              color: Colors.grey[850], height: 0, thickness: 2),
                          folderIcon(context,
                              time: "1 item | 30/08/19 12:05 PM",
                              name: "CreativeBiodataMaker"),
                          Divider(
                              color: Colors.grey[850], height: 0, thickness: 2),
                          folderIcon(context,
                              time: "1 item | 25/12/19 8:19 AM", name: "DCIM"),
                          Divider(
                              color: Colors.grey[850], height: 0, thickness: 2),
                          folderIcon(context,
                              time: "2 items | 25/12/19 7:44 PM",
                              name: "Dcoder"),
                          Divider(
                              color: Colors.grey[850], height: 0, thickness: 2),
                          folderIcon(context,
                              time: "4 items | 22/12/19 11:08PM", name: "Data"),
                          Divider(
                              color: Colors.grey[850], height: 0, thickness: 2),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, bottom: 15),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: null,
                    child: Icon(Icons.brush),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Padding folderIcon(BuildContext context, {time, name}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      width: width * 1,
      height: height * 0.07,
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                height: height * 0.065,
                width: width * 0.153,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.15,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: height * 0.06,
                                width: width * 0.13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Colors.orange[400],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Colors.amberAccent,
                                ),
                                height: height * 0.047,
                                width: width * 0.15,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: height * 0.07,
                                width: width * 0.07,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Colors.amberAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name, style: TextStyle(color: Colors.white)),
                    SizedBox(height: height * 0.015),
                    Text(
                      time,
                      style: TextStyle(
                          color: Colors.white, fontSize: height * 0.013),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white54,
              size: height * 0.025,
            ),
          ),
        ],
      ),
    ),
  );
}
