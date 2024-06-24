import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/pages/homeScreen.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              width: widthScreen,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Rectangle 1.png",
                    fit: BoxFit.cover,
                    height: heightScreen * .8,
                    width: widthScreen,
                  ),
                ],
              )),
          Text(
            "Lets find your Paradise",
            style:
                GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: widthScreen * 0.65,
            child: Text(
              "Find your perfect dream space",
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "with just a few clicks",
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homescreen()));
              },
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
