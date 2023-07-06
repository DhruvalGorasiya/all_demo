import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino extends StatefulWidget {
  const Cupertino({Key? key}) : super(key: key);

  @override
  State<Cupertino> createState() => _CupertinoState();
}

class _CupertinoState extends State<Cupertino> {
  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;

  Listtile(
      {IconData? icon,
      String? title,
      String? subTitle = null,
      Widget? trailing = null,
      Color? TileColor = null}) {
    return ListTile(
      tileColor: TileColor == null ? null : TileColor,
      leading: icon == null
          ? null
          : Icon(
              icon,
              color: Colors.grey,
            ),
      title: title == null ? null : Text(title),
      subtitle: subTitle == null ? null : Text(subTitle),
      trailing: trailing == null ? null : trailing,
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double wight = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.destructiveRed,
        title: Text("Settings UI"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Listtile(
                subTitle: "Common", TileColor: CupertinoColors.systemGrey6),
            Divider(
              height: 0,
            ),
            Listtile(
              icon: Icons.language,
              title: "Language",
              subTitle: "English",
              trailing: SizedBox(
                width: wight * 0.2,
                child: Row(
                  children: [
                    Text(
                      "English",
                      style: TextStyle(color: CupertinoColors.systemGrey2),
                    ),
                    Icon(
                      CupertinoIcons.forward,
                      color: CupertinoColors.systemGrey2,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
            ),
            Listtile(
              icon: Icons.cloud_outlined,
              title: "Environment",
              subTitle: "Production",
              trailing: SizedBox(
                width: wight * 0.26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Production",
                      style: TextStyle(color: CupertinoColors.systemGrey2),
                    ),
                    Icon(
                      CupertinoIcons.forward,
                      color: CupertinoColors.systemGrey2,
                    ),
                  ],
                ),
              ),
            ),
            Listtile(
                subTitle: "Account", TileColor: CupertinoColors.systemGrey6),
            Listtile(
              icon: Icons.phone,
              title: "Phone Number",
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.systemGrey2,
              ),
            ),
            Divider(
              height: 0,
            ),
            Listtile(
              icon: Icons.email,
              title: "Email",
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.systemGrey2,
              ),
            ),
            Divider(
              height: 0,
            ),
            Listtile(
              icon: Icons.logout,
              title: "Sing Out",
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.systemGrey2,
              ),
            ),
            Listtile(
                subTitle: "Security", TileColor: CupertinoColors.systemGrey6),
            Listtile(
              icon: Icons.phonelink_lock,
              title: "Lock app in background",
              trailing: CupertinoSwitch(
                activeColor: CupertinoColors.destructiveRed,
                value: switch1,
                onChanged: (val) {
                  setState(() {
                    switch1 = val;
                  });
                },
              ),
            ),
            Divider(
              height: 0,
            ),
            Listtile(
              icon: Icons.fingerprint,
              title: "Use fingerprint",
              trailing: CupertinoSwitch(
                activeColor: CupertinoColors.destructiveRed,
                value: switch2,
                onChanged: (val) {
                  setState(() {
                    switch2 = val;
                  });
                },
              ),
            ),
            Divider(
              height: 0,
            ),
            Listtile(
              icon: Icons.lock,
              title: "Change password",
              trailing: CupertinoSwitch(
                activeColor: CupertinoColors.destructiveRed,
                value: switch3,
                onChanged: (val) {
                  setState(() {
                    switch3 = val;
                  });
                },
              ),
            ),
            Listtile(subTitle: "Misc", TileColor: CupertinoColors.systemGrey6),
            Listtile(
              icon: Icons.description,
              title: "Terms of Service",
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.systemGrey2,
              ),
            ),
            Divider(
              height: 0,
            ),
            Listtile(
              icon: Icons.miscellaneous_services,
              title: "Open source licenses",
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.systemGrey2,
              ),
            ),
            Divider(
              height: 0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(CupertinoColors.destructiveRed),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Android UI",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
