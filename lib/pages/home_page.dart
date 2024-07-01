import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_123/constants/colors.dart';
import 'package:flutter_application_123/constants/nav_items.dart';
import 'package:flutter_application_123/widgets/site_logo.dart';

import '../constants/size.dart';
import '../styles/style.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldkey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldkey.currentState?.openEndDrawer();
                  },
                ),

              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                height: screenSize.height / 1.2,
                constraints: BoxConstraints(
                  minHeight: 350.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Hi \nI'm Lakruwan\nA Web Developer",
                          style: TextStyle(
                            fontSize: 30.0,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Get in touch"),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/lkd.jpeg",
                      width: screenWidth / 2,
                    ),
                  ],
                ),
              ),

              //SKILLS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //PROJECTS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //CONTACTS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              )
            ],
          ));
    });
  }
}
