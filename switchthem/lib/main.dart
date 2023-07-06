import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  ThemeData darkTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.yellow,
    dividerColor: Colors.red,
    hoverColor: const Color(0xff0037FF),
  );
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.brown,
    dividerColor: Colors.green,
    hoverColor: const Color(0xff762c78),
  );

  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      dark: darkTheme,
      initial: AdaptiveThemeMode.system,
      builder: (lightTheme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  bool theme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          "theme Chang",
          style: TextStyle(color: Theme.of(context).dividerColor),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Theme.of(context).dividerColor),
            ),
            Text("${_counter}"),
            FlutterSwitch(
              activeIcon: FaIcon(
                FontAwesomeIcons.solidMoon,
                color: Colors.black,
              ),
              inactiveIcon:
                  FaIcon(FontAwesomeIcons.solidSun, color: Colors.black),
              value: theme,
              onToggle: (val) {
                setState(
                  () {
                    theme = val;
                    theme
                        ? AdaptiveTheme.of(context).setLight()
                        : AdaptiveTheme.of(context).setDark();
                  },
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).hoverColor,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
