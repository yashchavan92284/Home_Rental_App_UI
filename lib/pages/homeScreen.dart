import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/pages/DetailsPage.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  // List<String> images = [
  //   "assets/images/Rectangle 5.png",
  //   "assets/images/Rectangle 6.png"
  // ];

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(241, 238, 238, 1),
        height: heightScreen,
        width: widthScreen,
        padding:
            const EdgeInsets.only(top: 50, bottom: 10, right: 20, left: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Hey Yash",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    )),
                const Spacer(),
                Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset("assets/images/Ellipse 1.png"),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Text(
                "Let's find your best\n residence",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchBar(
              backgroundColor: WidgetStatePropertyAll(Colors.white),
              leading: Icon(Icons.search),
              hintText: "Search your favourite paradise",
            ),
            Row(
              children: [
                Text(
                  "Most popular",
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text("See all",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(32, 169, 247, 1))))
              ],
            ),
            //Middle Container
            Container(
              height: heightScreen * .36,
              width: widthScreen,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage()));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        height: 306,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(
                                    "assets/images/Rectangle 5.png")),
                            Text(
                              "Night Hill Villa",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "London,Night Hill",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Text("Rs 5900",
                                    style: GoogleFonts.poppins(
                                        color: Colors.blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                Text("/Month",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500))
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Row(
              children: [
                Text(
                  "Nearby your location",
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text("See all",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(32, 169, 247, 1))))
              ],
            ),
            //last Conatainer of Screen
            Container(
                height: 118,
                width: 346,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Rectangle 8.png")
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Jumeriah Golf Estates Villa",
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_on),
                              Text(
                                "London,Area Plam Jumeriah",
                                style: GoogleFonts.poppins(
                                    color: const Color.fromRGBO(90, 90, 90, 1),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.chair),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                "4 Bedrooms",
                                style: GoogleFonts.poppins(
                                    color: const Color.fromRGBO(90, 90, 90, 1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.bathtub),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                "5 Bathroom",
                                style: GoogleFonts.poppins(
                                    color: const Color.fromRGBO(90, 90, 90, 1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                width: 90,
                              ),
                              Text(
                                textAlign: TextAlign.end,
                                "Rs 4500 /Month",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      ),
                    ]))
          ],
        ),
      ),
    );
  }
}
