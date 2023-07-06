import 'package:flutter/material.dart';
import 'package:settingui/Cupertino.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AndroidUi(),
    ),
  );
}

class AndroidUi extends StatefulWidget {
  const AndroidUi({Key? key}) : super(key: key);

  @override
  State<AndroidUi> createState() => _AndroidUiState();
}

class _AndroidUiState extends State<AndroidUi> {
  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Settings UI"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListtileText(leading: "Common"),
            Listtile(
                icon: Icons.language, title: "Language", subTitle: "English"),
            Divider(),
            Listtile(
                icon: Icons.cloud_outlined,
                title: "Environment",
                subTitle: "Production"),
            ListtileText(leading: "Account"),
            Listtile(icon: Icons.phone, title: "Phone Number"),
            Divider(),
            Listtile(icon: Icons.email, title: "Email"),
            Divider(),
            Listtile(icon: Icons.logout, title: "Sing Out"),
            ListtileText(leading: "Security"),
            Listtile(
              icon: Icons.phonelink_lock,
              title: "Lock app in background",
              trailing: Switch(
                activeTrackColor: Colors.deepOrange.shade300,
                activeColor: Colors.deepOrange,
                value: switch1,
                onChanged: (val) {
                  setState(() {
                    switch1 = val;
                  });
                },
              ),
            ),
            Divider(),
            Listtile(
              icon: Icons.fingerprint,
              title: "Use fingerprint",
              trailing: Switch(
                activeTrackColor: Colors.deepOrange.shade300,
                activeColor: Colors.deepOrange,
                value: switch2,
                onChanged: (val) {
                  setState(() {
                    switch2 = val;
                  });
                },
              ),
            ),
            Divider(),
            Listtile(
              icon: Icons.lock,
              title: "Change password",
              trailing: Switch(
                activeTrackColor: Colors.deepOrange.shade300,
                activeColor: Colors.deepOrange,
                value: switch3,
                onChanged: (val) {
                  setState(() {
                    switch3 = val;
                  });
                },
              ),
            ),
            ListtileText(leading: "Misc"),
            Listtile(icon: Icons.description, title: "Terms of Service"),
            Divider(),
            Listtile(
                icon: Icons.miscellaneous_services,
                title: "Open source licenses"),
            Divider(),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Cupertino();
                    },
                  ),
                );
              },
              child: Text(
                "Cupertino UI",
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

ListtileText({required String leading}) {
  return ListTile(
      leading: Text(
    leading,
    style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
  ));
}

Listtile(
    {required IconData icon,
    required String title,
    String? subTitle = null,
    Widget? trailing = null}) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.grey,
    ),
    title: Text(title),
    subtitle: subTitle == null ? null : Text(subTitle),
    trailing: trailing,
  );
}
