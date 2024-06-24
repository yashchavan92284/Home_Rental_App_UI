import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Detail's",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          color: const Color.fromRGBO(241, 238, 238, 1),
          width: widthScreen,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Image.asset(
                  "assets/images/Rectangle 9.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Night Hill Villa",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "London, Night Hill",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(72, 72, 72, 1)),
                  ),
                  const Spacer(),
                  Text(
                    "Rs 5900",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 10, 126, 215)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 141,
                      width: 112,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.chair),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Bedrooms"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("5"),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 141,
                      width: 112,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.bathtub_outlined),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Bathooms"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("6"),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      // margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 141,
                      width: 112,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.crop_square),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Square ft"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("7,600 dq ft"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  child: Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia alskkda dasjdfkajsd dskconsequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                      onPressed: () {},
                      child: const Text(
                        "Rent Now",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
