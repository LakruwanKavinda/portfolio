import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_123/constants/colors.dart';
import 'package:flutter_application_123/constants/nav_items.dart';
import 'package:flutter_application_123/widgets/contact_section.dart';
import 'package:flutter_application_123/widgets/main_mobile.dart';
import 'package:flutter_application_123/widgets/project_section.dart';
import 'package:flutter_application_123/widgets/site_logo.dart';
import 'package:flutter_application_123/widgets/skills_desktop.dart';
import 'package:flutter_application_123/widgets/skills_mobile.dart';

import '../constants/size.dart';
import '../constants/skill_items.dart';
import '../styles/style.dart';
import '../utils/project_utils.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/project_card.dart';

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
    final screenHeight = screenSize.height;
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
            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),

            //SKILLS
            Container(
              width: screenWidth,
              padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: CustomColor.bgLight1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //title
                  const Text(
                    "What I can do",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 50),

                  //platforms and skills
                  if (constraints.maxWidth >= kMedDesktopWidth)
                    const SkillsDesktop()
                  else
                    const SkillsMobile(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            //PROJECTS
            const ProjectSection(),

            const SizedBox(height: 30),
            //CONTACT
            const ContactSection(),
            const SizedBox(height: 30),
            //FOOTER
            Footer(),
          ],
        ),
      );
    });
  }
}


//vinadi 24:49 n nawaththala thiyenne.