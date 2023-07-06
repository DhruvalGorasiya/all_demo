import 'package:app_store/Utilitis/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Today extends StatelessWidget {
  const Today({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double wight = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.03,
              ),
              Text(
                "WEDNESDAY,SEPTEMBER 12",
                style: GoogleFonts.lato(color: AppColors.Grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: GoogleFonts.ubuntu(
                        color: AppColors.Black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "Assets/IMG/pexels-gustavo-fring-4172933.jpg"),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      height: height * 0.55,
                      width: wight * 1,
                      decoration: BoxDecoration(
                        color: AppColors.Grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
