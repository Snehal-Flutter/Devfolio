import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  Function scrollAboutMe;
  Function scrollAchivement;
  Function scrollProject;
  Function scrollContact;

  NavBar(this.scrollAboutMe, this.scrollProject, this.scrollAchivement,
      this.scrollContact);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar(this.scrollAboutMe, this.scrollProject,
            this.scrollAchivement, this.scrollContact);
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavbar(this.scrollAboutMe, this.scrollProject,
            this.scrollAchivement, this.scrollContact);
      } else {
        return MobiletopNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  Function action;
  Function scrollAchivement;
  Function scrollProject;
  Function scrollContact;
  DesktopNavbar(this.action, this.scrollProject, this.scrollAchivement,
      this.scrollContact);
  var themestate = 'light';
  changetheme() {
    Get.isDarkMode ? themestate = 'light' : themestate = 'dark';
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 40,
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '<',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: '',
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Snehal Singh',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Princess_Sofia',
                              color: Colors.blue[400],
                              fontSize: 30)),
                    ],
                  ),
                ),
                Text(
                  ' />',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: action,
                  child: Text(
                    'About me',
                    style: TextStyle(
                        //color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: scrollProject,
                  child: Text(
                    'Projects',
                    style: TextStyle(
                        //color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: scrollAchivement,
                  child: Text(
                    'Work Experience',
                    style: TextStyle(
                        //color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: scrollContact,
                  child: Text(
                    'Contact Me',
                    style: TextStyle(
                        //color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.moon),
                  onPressed: changetheme,
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobiletopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Menu extends StatelessWidget {
  Function action;
  Function scrollAchivement;
  Function scrollProject;
  Function scrollContact;
  Menu(this.action, this.scrollProject, this.scrollAchivement,
      this.scrollContact);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.transparent,
        alignment: Alignment.topRight,
        child: ListView(
          children: [
            ListTile(
              title: GestureDetector(
                onTap: action,
                child: Text(
                  'About me',
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              leading: Icon(
                Icons.person,
                size: 20,
              ),
            ),
            ListTile(
                title: GestureDetector(
                  onTap: scrollProject,
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      //color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                leading: Icon(Icons.book_outlined)),
            ListTile(
              title: GestureDetector(
                onTap: scrollAchivement,
                child: Text(
                  'Work Experience',
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              leading: Icon(Icons.work_outline),
            ),
            ListTile(
              title: GestureDetector(
                onTap: scrollContact,
                child: Text(
                  'Contact Me',
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              leading: Icon(Icons.contact_mail),
            )
          ],
        ),
      ),
    );
  }
}
