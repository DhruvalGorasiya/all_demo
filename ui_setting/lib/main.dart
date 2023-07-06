import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: uiSetting(),
    ),
  );
}

class uiSetting extends StatelessWidget {
  const uiSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: height * 0.065,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: Text(
                            "Search setting",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                ),
                uiApp(
                  context,
                  "About Phone",
                  icon: Icons.info_outline,
                  color: Colors.blue,
                  lastName: "MIUI 10 Global 9.2.28",
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                  indent: 45,
                ),
                uiApp(
                  context,
                  "System apps updater",
                  icon: Icons.system_update,
                  color: Colors.orangeAccent,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: height * 0.02,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.1),
                      color: Colors.grey[100],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "WIRELESS & NETWORKS",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 20,
                  indent: 20,
                ),
                uiApp(
                  context,
                  "SIM card & mobile networks",
                  icon: Icons.sim_card_outlined,
                  color: Colors.green,
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                  indent: 45,
                ),
                uiApp(
                  context,
                  "WI-FI",
                  icon: Icons.wifi,
                  color: Colors.blue,
                  lastName: "off",
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                  indent: 45,
                ),
                uiApp(
                  context,
                  "Bluetooth",
                  icon: Icons.bluetooth,
                  color: Colors.purple,
                  lastName: "off",
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                  indent: 45,
                ),
                uiApp(
                  context,
                  "Portable hotspot",
                  icon: Icons.all_inclusive,
                  color: Colors.orangeAccent,
                  lastName: "off",
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                  indent: 45,
                ),
                uiApp(
                  context,
                  "VPN",
                  icon: Icons.vpn_key_outlined,
                  color: Colors.purple,
                  lastName: "off",
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                  indent: 45,
                ),
                uiApp(
                  context,
                  "Data usage",
                  icon: Icons.data_usage,
                  color: Colors.blue,
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                  indent: 45,
                ),
                uiApp(
                  context,
                  "More",
                  icon: Icons.more_horiz,
                  color: Colors.green,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: height * 0.02,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.1),
                      color: Colors.grey[100],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "PERSONL",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                  indent: 45,
                ),
                uiApp(
                  context,
                  "Display",
                  icon: Icons.wb_sunny_outlined,
                  color: Colors.orangeAccent,
                ),
                Divider(
                  color: Colors.grey[350],
                  height: 30,
                  indent: 45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

uiApp(BuildContext context, name,
    {IconData? icon = null, Color? color = null, String? lastName = ""}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Stack(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: color,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24, top: 6),
          child:
              Align(alignment: Alignment.centerRight, child: Text(lastName!)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 17,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  );
}
