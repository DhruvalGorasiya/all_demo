import 'package:flutter/material.dart';

class SinglePlayer extends StatefulWidget {
  const SinglePlayer({Key? key}) : super(key: key);

  @override
  State<SinglePlayer> createState() => _SinglePlayerState();
}

class _SinglePlayerState extends State<SinglePlayer> {
  String Player = "Assets/Imgs/X.png";
  var winner = 'Assets/Imgs/R.png';
  var Player1 = 1;
  List Grid = [
    "Assets/Imgs/R.png",
    "Assets/Imgs/R.png",
    "Assets/Imgs/R.png",
    "Assets/Imgs/R.png",
    "Assets/Imgs/R.png",
    "Assets/Imgs/R.png",
    "Assets/Imgs/R.png",
    "Assets/Imgs/R.png",
    "Assets/Imgs/R.png",
  ];

  List random = [0, 1, 2, 3, 4, 5, 6, 7, 8];

  void draw(i) {
    if (Player1 == 1) {
      setState(() {
        Grid[i] = "Assets/Imgs/O.png";
        Player1 = 2;
        random.remove(i);
        findwinner(Grid[i]);
      });
    }
    if (Player1 == 2 && random.isNotEmpty) {
      setState(() {
        random.shuffle();
        int i = random[0];
        Grid[i] = "Assets/Imgs/X.png";
        Player1 = 1;
        random.remove(i);
        findwinner(Grid[i]);
      });
    }
    if (!Grid.contains("Assets/Imgs/R.png")) {
      showwinner();
    }
  }

  bool checkMove(i1, i2, i3, current) {
    if (Grid[i1] == current && Grid[i2] == current && Grid[i3] == current) {
      return true;
    }
    return false;
  }

  void findwinner(current) {
    if (checkMove(0, 1, 2, current) ||
        checkMove(3, 4, 5, current) ||
        checkMove(6, 7, 8, current) ||
        checkMove(0, 3, 6, current) ||
        checkMove(1, 4, 7, current) ||
        checkMove(2, 5, 8, current) ||
        checkMove(0, 4, 8, current) ||
        checkMove(2, 4, 6, current)) {
      setState(() {
        winner = current;
        showwinner();
      });
    }
  }

  showwinner() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Winner",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          content: (winner != "Assets/Imgs/R.png")
              ? Row(
                  children: [
                    Image.asset(
                      winner,
                    ),
                    Text(
                      "Is Winner",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                )
              : null,
          actions: [
            Center(
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      reset();
                      Navigator.pop(context);
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffF56E6E),
                        Color(0xff8aea65),
                      ],
                      stops: [0.1, 10.0],
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 0), // Shadow position
                      ),
                    ],
                  ),
                  height: height * 0.05,
                  width: width * 0.3,
                  child: Center(
                    child: Text(
                      "Play Again",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void reset() {
    setState(() {
      Player1 = 1;
      winner = 'Assets/Imgs/R.png';
      Grid = Grid = [
        "Assets/Imgs/R.png",
        "Assets/Imgs/R.png",
        "Assets/Imgs/R.png",
        "Assets/Imgs/R.png",
        "Assets/Imgs/R.png",
        "Assets/Imgs/R.png",
        "Assets/Imgs/R.png",
        "Assets/Imgs/R.png",
        "Assets/Imgs/R.png",
      ];
      random = [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffF56E6E),
                  Color(0xff8aea65),
                ],
                stops: [0.1, 10.0],
              ),
            ),
          ),
          title: Text(
            'Tic Tac Toe',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0, 0), // Shadow position
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.all(30),
                color: Color(0xffdade69),
                child: GridView.builder(
                  itemCount: Grid.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        draw(index);
                      },
                      child: Material(
                        color: Colors.white,
                        child: Center(
                          child: Image.asset(
                            Grid[index],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            InkWell(
              onTap: () {
                reset();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffF56E6E),
                      Color(0xff8aea65),
                    ],
                    stops: [0.1, 10.0],
                  ),
                ),
                height: height * 0.055,
                width: width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.refresh,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      "Reset",
                      style: TextStyle(fontSize: 20, color: Colors.white),
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
