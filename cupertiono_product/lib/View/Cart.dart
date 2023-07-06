import 'package:cupertiono_product/Models/Product%20Model.dart';
import 'package:cupertiono_product/Utilits/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  DateTime date = DateTime.now();
  double Shopping = 0;
  double Tex = 10.32;
  double total = 0;

  Total() {
    setState(() {
      for (int j = 0; j < cart.length; j++) {
        Shopping = cart[j].Price + Shopping;
        print(j.toString());
      }
      total = Shopping + Tex;
    });
  }

  @override
  void initState() {
    super.initState();
    Total();
  }

  @override
  void dispose() {
    super.dispose();
    Shopping = 0;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Name",
              hintStyle: GoogleFonts.lato(color: AppColor.Grey4),
              prefixIcon: Icon(
                CupertinoIcons.person_alt,
                color: AppColor.Grey4,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: GoogleFonts.lato(color: AppColor.Grey4),
              prefixIcon: Icon(
                CupertinoIcons.mail_solid,
                color: AppColor.Grey4,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Location",
              hintStyle: GoogleFonts.lato(color: AppColor.Grey4),
              prefixIcon: Icon(
                CupertinoIcons.location_solid,
                color: AppColor.Grey4,
              ),
            ),
          ),
          ListTile(
            trailing: Text("${date.toString().substring(0, 16)}"),
          ),
          Container(
            height: height * 0.26,
            child: CupertinoDatePicker(
                use24hFormat: false,
                initialDateTime: DateTime.now(),
                mode: CupertinoDatePickerMode.dateAndTime,
                dateOrder: DatePickerDateOrder.dmy,
                onDateTimeChanged: (val) {
                  setState(() {
                    date = val;
                  });
                }),
          ),
          SizedBox(
            height: height * 0.2,
            child: ListView.builder(
              itemBuilder: (BuildContext, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: height * 1,
                        width: width * 0.17,
                        color: AppColor.Grey,
                      ),
                      title: Text(
                        cart[index].Name,
                        style: GoogleFonts.lato(fontSize: 20),
                      ),
                      subtitle: Text("\$${cart[index].Price}.00"),
                      trailing: Text(
                        "\$${cart[index].Price}.00",
                        style: GoogleFonts.lato(fontSize: 22),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      height: 1,
                      indent: height * 0.11,
                      endIndent: height * 0.02,
                    ),
                  ],
                );
              },
              itemCount: cart.length,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Shipping \$${Shopping}",
                  style: GoogleFonts.lato(color: AppColor.Grey4),
                ),
                Text(
                  "Tax \$${Tex}",
                  style: GoogleFonts.lato(color: AppColor.Grey4),
                ),
                Text(
                  "Total \$${total}",
                  style: GoogleFonts.lato(
                      color: AppColor.Black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
