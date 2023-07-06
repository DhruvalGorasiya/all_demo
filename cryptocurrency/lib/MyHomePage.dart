import 'dart:developer';
import 'package:flutter/material.dart';
import 'ApiCall.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    fetchCrypto();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double wight = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[900],
        child: Container(
          height: height * 0.08,
          child: Center(
            child: DropdownButton(
              dropdownColor: Colors.blue[900],
              value: dropval,
              style: TextStyle(color: Colors.white, fontSize: 25),
              menuMaxHeight: height * 0.8,
              alignment: Alignment.bottomCenter,
              items: currencies.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  onTap: () async {
                    await fetchCrypto();
                    setState(() {});
                  },
                  child: Text(
                    items,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropval = newValue!;
                  recall();
                  log(dropval);
                });
              },
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: fetchCrypto(),
          builder: (context, spt) {
            if (rate != null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Container(
                      width: wight * 0.95,
                      height: height * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[900],
                      ),
                      child: Center(
                        child: Text(
                          '1 ${rate[0]['id']}  =  ${rate[0]['price']}  ${dropval} ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: wight * 0.95,
                      height: height * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[900],
                      ),
                      child: Center(
                        child: Text(
                          '1 ${rate[1]['id']}  =  ${rate[1]['price']}  ${dropval} ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: wight * 0.95,
                      height: height * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[900],
                      ),
                      child: Center(
                        child: Text(
                          '1 ${rate[2]['id']}  =  ${rate[2]['price']}  ${dropval} ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: wight * 0.95,
                      height: height * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[900],
                      ),
                      child: Center(
                        child: Text(
                          '1 ${rate[3]['id']}  =  ${rate[3]['price']}  ${dropval} ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: wight * 0.95,
                      height: height * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[900],
                      ),
                      child: Center(
                        child: Text(
                          '1 ${rate[4]['id']}  =  ${rate[4]['price']}  ${dropval} ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else if (spt.hasError) {
              throw Exception(spt.error.toString());
            }
            return Center(
              child: CircularProgressIndicator(
                color: Colors.blue[900],
              ),
            );
          },
        ),
      ),
    );
  }
}
