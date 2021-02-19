import 'package:flutter/material.dart';
import 'package:devfolio/model/cardwidget.dart';

class Achivement extends StatelessWidget {
  final akey;
  Achivement(this.akey);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 1200) {
        return DesktopWork(this.akey);
      } else if (constraint.maxWidth > 800 && constraint.maxWidth < 1200) {
        return DesktopWork(this.akey);
      } else {
        return MobileWork(this.akey);
      }
    });
  }
}

class DesktopWork extends StatelessWidget {
  final akey;
  DesktopWork(this.akey);
  @override
  Widget build(BuildContext context) {
    return Container(
      key: akey,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 20, left: 40, bottom: 20),
            child: Text(
              'Work Experience 🏆',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Cardwidget(
                      link:
                          'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                      icon: Icons.work_outline,
                      title: 'Flutter Trainee',
                      des: 'Coruscate Solution Pvt. Ltd.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: Cardwidget(
                      link:
                          'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                      icon: Icons.work_outline,
                      title: 'COO',
                      des: 'Code Warriors',
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: Cardwidget(
                        link:
                            'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                        icon: Icons.work_outline,
                        title: 'Member',
                        des: 'Google Developer Group'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Cardwidget(
                        link:
                            'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                        icon: Icons.work_outline,
                        title: 'Research Intern',
                        des: 'Dexterity Global Group'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: Cardwidget(
                      link:
                          'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                      icon: Icons.work_outline,
                      title: 'Android Intern',
                      des: 'SvaKatha',
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: Cardwidget(
                        link:
                            'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                        icon: Icons.work_outline,
                        title: 'Sponsorship Head',
                        des: 'Script Foundation'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileWork extends StatelessWidget {
  final key;
  MobileWork(this.key);
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Work Experience 🏆',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
            link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
            icon: Icons.work_outline,
            title: 'Flutter Developer Trainee',
            des: 'Coruscate Solution Pvt. Ltd.',
          ),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
            link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
            icon: Icons.work_outline,
            title: 'COO',
            des: 'Code Warriors',
          ),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
              link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
              icon: Icons.work_outline,
              title: 'Member',
              des: 'Google Developer Group'),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
              link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
              icon: Icons.work_outline,
              title: 'Research Intern',
              des: 'Dexterity Global Group'),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
            link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
            icon: Icons.work_outline,
            title: 'Android Intern',
            des: 'SvaKatha',
          ),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
              link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
              icon: Icons.work_outline,
              title: 'Sponsorship Head',
              des: 'Script Foundation'),
        ],
      ),
    );
  }
}
