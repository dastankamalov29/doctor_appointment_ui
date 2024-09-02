import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../styles/styles.dart';
import '../widgets/doctors_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List catNames = ["Dental", "Heart", "Eye", "Brain", "Ear"];

    List<Icon> catIcon = [
      Icon(MdiIcons.toothOutline, color: Colors.blue, size: 30),
      Icon(MdiIcons.heartPlus, color: Colors.blue, size: 30),
      Icon(MdiIcons.eye, color: Colors.blue, size: 30),
      Icon(MdiIcons.brain, color: Colors.blue, size: 30),
      Icon(MdiIcons.earHearing, color: Colors.blue, size: 30),
    ];

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 20),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Hi, Programmer",
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  "Your health is our",
                  style: welcomePage,
                ),
                const Text("First Priority", style: welcomePage),
                const SizedBox(height: 25),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  width: size.width,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here..",
                        prefixIcon: Icon(
                          Icons.search,
                          size: 35,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catNames.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              color: Color(0XFFF2F8FF),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 2,
                                    blurRadius: 4),
                              ],
                            ),
                            child: Center(
                              child: catIcon[index],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            catNames[index],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    "Recommended Doctors",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const DoctorsSection()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
