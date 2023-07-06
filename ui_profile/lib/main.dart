import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: profileApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class profileApp extends StatelessWidget {
  const profileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          "View Profile",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 15),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Pavan Kumar",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Developer",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.message,
                      size: 40,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 55,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                                'images/pexels-bruno-salvadori-2269872.jpg'),
                          ),
                        )),
                    Icon(
                      Icons.call,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[400],
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "1.5k",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "1.5k",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "1.5k",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      ),
                      Text(
                        "Comments",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "1.5k",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[400],
                height: 50,
              ),
              Text(
                "Google Developer Expert for FLutter.\nPassionate #Flutter,#Android Developer.\n#Entrepreneur #Yuotuber",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Divider(
                color: Colors.grey[400],
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 360,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Website",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "about.me/imthepk",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Phone",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text("+919876543210",
                                style: TextStyle(fontSize: 16)),
                            Text(
                              "You Tube",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text("youtube.com/mtechviral",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "New Delhi",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text("mtechviral@gmail.com",
                                style: TextStyle(fontSize: 16)),
                            Text(
                              "Facebook",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "fb.com/imthepk",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Colors.black,
                child: Container(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:
                        LinearGradient(colors: [Colors.white10, Colors.black]),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
