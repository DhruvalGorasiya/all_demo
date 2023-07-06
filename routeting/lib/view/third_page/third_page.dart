import 'package:flutter/material.dart';
import 'package:routeting/model/argument_model.dart';
import 'package:routeting/utilits/colors.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  ArgumentModel args = ArgumentModel();

  void initState() {
    super.initState();
    // args = ModalRoute.of(context)!.settings.arguments as ArgumentModel;
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    args = ModalRoute.of(context)!.settings.arguments as ArgumentModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    tileColor: Colors.red,
                    leading: Icon(Icons.check_circle),
                    title: Text('Title'),
                    subtitle: Text('Sub Title'),
                    trailing: Text('Sub Title'),
                  ),
                  // Container(
                  //   height: 200,
                  //   color: Colors.green ,
                  //   child: GridTile(
                  //     child: Text('child'),
                  //     // header: Text('Header'),
                  //     footer: Text('footer'),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
