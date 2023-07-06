import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Button
class _MyHomePageState extends State<MyHomePage> {
  bool? valChange = false;
  String? valRadio = 'Male';
  String? valDrop = '';
  double valSlider = 0;
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Click here'),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            FlatButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 10),
                    content: Text('Show snackBar'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text('Flat button'),
            ),
            RaisedButton(
              onPressed: () {},
              child: const Text('Raised button'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              elevation: 0,
              label: Row(
                children: [
                  const Icon(Icons.pause),
                  const Text('Pause'),
                ],
              ),
              tooltip: 'okay',
            ),
            Switch(
              value: valChange ?? false,
              onChanged: (val) {
                setState(() {
                  valChange = val;
                });
              },
            ),
            CupertinoSwitch(
              value: valChange ?? false,
              onChanged: (val) {
                setState(() {
                  valChange = val;
                });
              },
            ),
            IconButton(
              onPressed: () {},
              splashColor: Colors.transparent,
              icon: const Icon(Icons.message),
            ),
            Checkbox(
              value: valChange,
              onChanged: (val) {
                valChange = val;
                setState(() {});
                print(val.toString());
              },
            ),
            Radio(
              value: 'Male',
              groupValue: valRadio,
              onChanged: (String? val) {
                print('val $val');
                setState(() {
                  valRadio = val;
                });
              },
            ),
            Radio(
              value: 'Female',
              groupValue: valRadio,
              onChanged: (String? val) {
                print('val $val');
                setState(() {
                  valRadio = val;
                });
              },
            ),
            Text(valRadio ?? ''),
            DropdownButton(
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                  ),
                );
              }).toList(),
              onChanged: (String? val) {
                print(val ?? '');
                setState(() {
                  valDrop = val;
                });
              },
              value: valDrop == '' ? null : valDrop,
              hint: const Text('Select your country'),
            ),
            Slider(
              divisions: 5,
              value: valSlider,
              min: 0,
              max: 100,
              // onChangeStart: (){},
              // onChangeEnd: (){},
              activeColor: Colors.grey,
              inactiveColor: Colors.orange,
              label: valSlider.toString(),
              onChanged: (double val) {
                setState(() {
                  valSlider = val;
                });
              },
            ),
            RangeSlider(
              values: _currentRangeValues,
              max: 100,
              divisions: 5,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            PopupMenuButton(
                icon: const Icon(Icons.filter_alt),
                itemBuilder: (_) => const <PopupMenuItem<String>>[
                      PopupMenuItem<String>(child: Text('Doge'), value: 'Doge'),
                      PopupMenuItem<String>(child: Text('Lion'), value: 'Lion'),
                    ],
                onSelected: (_) {}),
          ],
        ),
      ),
    );
  }
}
