import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  int currentIndex = 1;

  List<Widget> bodyApp = [
    Container(
      color: Colors.red,
      child: const Text('0'),
      height: double.infinity,
      width: double.infinity,
    ),
    Container(
      color: Colors.green,
      height: double.infinity,
      width: double.infinity,
      child: const Text('1'),
    ),
  ];

  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              controller: _controller,
              unselectedLabelColor: Colors.red,
              labelColor: Colors.yellow,
              indicatorColor: Colors.purple,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelStyle: const TextStyle(
                color: Colors.yellow,
              ),
              onTap: (val) {
                var formatter = NumberFormat('#,##,000');
                print(
                  formatter.format(16987),
                );
                print(
                  formatter.format(13876),
                );
                print(
                  formatter.format(456786665654),
                );
              },
              tabs: const [
                Tab(
                  child: Text(
                    'Tab One',
                    style: TextStyle(),
                  ),
                ),
                Tab(
                  child: Text(
                    'Tab One',
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: const Text('0'),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: const Text('1'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //   ],
      //   currentIndex: currentIndex,
      //   onTap: (val) {
      //     log(val.toString());
      //     currentIndex = val;
      //     setState(() {});
      //   },
      // ),
      // body: bodyApp.elementAt(currentIndex),
    );
  }
}
