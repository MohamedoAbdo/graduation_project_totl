import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/svscreen/Restaurants.dart';
import 'package:tourism_app/features/svscreen/profile.dart';
import '../home/presentation/favourite/favourite.dart';
import '../home/scan/scan_design.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Material(
              shadowColor: const Color(0xffE4D1B9),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 55,
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFBE8C63),
                          ),
                          borderRadius: BorderRadius.circular(
                            22,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                        ),
                        hintText: 'Search',
                        hintStyle: const TextStyle(color: Color(0xffE4D1B9)),
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: const Color(0xffE4D1B9)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Now You Can Search About Near Coffee Or',
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Restaurant.',
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          //
          const SizedBox(height: 50),
          //
          MaterialButton(
            onPressed: () {
              AwesomeDialog(
                width: 450,
                bodyHeaderDistance: 32,
                context: context,
                dialogType: DialogType.noHeader,
                animType: AnimType.rightSlide,
                title: 'Location Access',
                desc:
                    "please allow kemet access to your location \n    to find restaurants or caffees near you.",
                titleTextStyle: const TextStyle(
                  color: Color(0xff6C3428),
                  fontSize: 16,
                  fontFamily: 'intr',
                  fontWeight: FontWeight.w500,
                ),
                btnCancelOnPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Search()));
                },
                btnCancelColor: Colors.white,
                buttonsTextStyle: const TextStyle(
                  color: Color(0xFFBE8C63),
                  fontSize: 16,
                  fontFamily: 'intr',
                  fontWeight: FontWeight.w500,
                ),
                btnOkOnPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Restaurants()));
                },
                btnOkText: ("   Allow"),
                btnOkColor: Colors.white,
              )..show();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 180,
                height: 51,
                decoration: BoxDecoration(
                  color: const Color(0xFFBE8C63),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Row(
                    children: [
                      Text(
                        "                Search",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFE4D1B9),
                          fontSize: 16,
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 3, color: Colors.brown),
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: const Color(
            0xff6C3428,
          ),
          child: const Icon(
            Icons.camera_alt_rounded,
            size: 32,
            color: Color(
              0xffE4D1B9,
            ),
          ),
          onPressed: () {Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ScanDesign()),
          );},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.1,
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Color(0xff6c3428),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home_Screen()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Favourite()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Search()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xffBE8C63),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileScreen()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_rounded,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
