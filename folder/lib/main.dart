import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FunApp(),
  ));
}

class FunApp extends StatelessWidget {
  const FunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Column(
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
                                style: TextStyle(color: Colors.amberAccent),
                              ),
                              Text(
                                "/ 118.49GB",
                                style: TextStyle(color: Colors.amberAccent),
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
                      Icons.list_sharp,
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
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Container(
                height: height * 0.65,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FolderIcon(
                              context,
                              "Android",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "Biodata",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "browser",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "com.activi\n.callofduty",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "com.faceb\nook.orca",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FolderIcon(
                              context,
                              "Creavite-\nBiodata",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "DCIM",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "Dcoder",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "Download",
                              icon: Icons.download_rounded,
                              color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "Dragon Ball Z",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FolderIcon(
                              context,
                              "Lost in Space S01",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "Lost in Space S02",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "MAGA",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "MidasOversea",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "MIUI",
                              icon: Icons.warning_outlined,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FolderIcon(
                              context,
                              "MiVideoGlobal",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "Musoc",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "MxShare",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "PSP",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "Sacred\nGames Sea-",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FolderIcon(
                              context,
                              "Subtitles",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "systemui",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "Telegram",
                              icon: Icons.airplanemode_active,
                              color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "tencent",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                            FolderIcon(
                              context,
                              "The Witcher",
                              // icon: Icons.account_circle,
                              // color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 15),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton(
                          onPressed: null,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.brush),
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
    );
  }
}

Container FolderIcon(BuildContext context, String name,
    {IconData? icon = null, Color? color = null}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Container(
    height: height * 0.13,
    width: width * 0.18,
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
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Icon(
                          icon,
                          color: color,
                        )),
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
        Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "$name",
              style: TextStyle(fontSize: 12, color: Colors.white),
              textAlign: TextAlign.center,
            )),
      ],
    ),
  );
}
