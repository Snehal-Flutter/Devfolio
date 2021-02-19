import 'package:flutter/material.dart';
import 'package:devfolio/modules/header.dart';
import 'package:devfolio/modules/about_me.dart';
import 'package:devfolio/modules/achivements.dart';
import 'package:devfolio/modules/contact.dart';
import 'package:devfolio/modules/projects.dart';
import 'package:devfolio/modules/navbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var themestate = 'light';
  changetheme() {
    Get.isDarkMode ? themestate = 'light' : themestate = 'dark';
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }

  final aboutMeKey = GlobalKey();
  final projectKey = GlobalKey();
  final achivementKey = GlobalKey();
  final contactKey = GlobalKey();

  _scrollToAboutMe() {
    Scrollable.ensureVisible(aboutMeKey.currentContext);
  }

  _scrollToProjects() {
    Scrollable.ensureVisible(projectKey.currentContext);
  }

  _scrollToAchivement() {
    Scrollable.ensureVisible(achivementKey.currentContext);
  }

  _scrollToContact() {
    Scrollable.ensureVisible(contactKey.currentContext);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              backgroundColor: Colors.black,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '< ',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Snehal Singh',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Princess_Sofia',
                                color: Colors.blue[400],
                                fontSize: 30)),
                        TextSpan(
                          text: ' />',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      icon: Icon(FontAwesomeIcons.moon),
                      onPressed: changetheme),
                ],
              ),
            )
          : null,
      endDrawer: MediaQuery.of(context).size.width < 800
          ? Drawer(
              child: Menu(_scrollToAboutMe, _scrollToProjects,
                  _scrollToAchivement, _scrollToContact),
            )
          : null,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(_scrollToAboutMe, _scrollToProjects, _scrollToAchivement,
                  _scrollToContact),
              Header(),
              AboutMe(aboutMeKey),
              Projects(projectKey),
              SizedBox(
                height: 30,
              ),
              Achivement(achivementKey),
              Contact(contactKey),
              Container(
                child: Text(
                  'Made with ❤️ by Snehal Singh',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
