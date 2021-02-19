import 'package:flutter/material.dart';
import 'package:devfolio/model/cardwidget.dart';

class Projects extends StatelessWidget {
  final pkey;
  Projects(this.pkey);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopProject(this.pkey);
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopProject(this.pkey);
      } else {
        return MobileProject(this.pkey);
      }
    });
  }
}

class DesktopProject extends StatelessWidget {
  final pkey;
  DesktopProject(this.pkey);
  @override
  Widget build(BuildContext context) {
    return Container(
      key: pkey,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 20, left: 40, bottom: 20),
            child: Text(
              'Projects 📱',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              children: [
                Expanded(
                  child: Cardwidget(
                    link: 'https://github.com/Snehal-Singh174/CoDy_GiRlS',
                    icon: Icons.book_outlined,
                    title: 'Code Warriors',
                    des:
                        'An E-learning App for tech community to learn new technologies, courses, materials, quiz and personal mentor support',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Cardwidget(
                    link: 'https://github.com/Snehal-Flutter/Coruscate-Task',
                    icon: Icons.book_outlined,
                    title: 'Flutter Task',
                    des:
                        'A Flutter App which include implementation of Shared Preferences, Getx, Retrofit, Sembast, Kiwi and many more...',
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
                  child: Cardwidget(
                    link:
                        'https://github.com/Snehal-Singh174/Cricket-Chirps-Prediction',
                    icon: Icons.book_outlined,
                    title: 'Cricket Chirps Prediction',
                    des:
                        'A ML Project in which cricket chirps are predicted using Linear Regression, Decision Tree and Random Forest Algorithm',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Cardwidget(
                      link:
                          'https://github.com/Snehal-Singh174/Emotion-Detection',
                      icon: Icons.book_outlined,
                      title: 'Emotion Detection',
                      des:
                          'Facial emotion recognition is the process of detecting human emotions from facial expressions.'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileProject extends StatelessWidget {
  final key;
  MobileProject(this.key);
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
            'Projects 📱',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
            link: 'https://github.com/Snehal-Singh174/CoDy_GiRlS',
            icon: Icons.book_outlined,
            title: 'Code Warriors',
            des:
                'An E-learning App for tech community to learn new technologies, courses, materials, quiz and personal mentor support',
          ),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
            link: 'https://github.com/Snehal-Flutter/Coruscate-Task',
            icon: Icons.book_outlined,
            title: 'Flutter Task',
            des:
                'A Flutter App which include implementation of Shared Preferences, Getx, Retrofit, Sembast, Kiwi and many more...',
          ),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
            link:
                'https://github.com/Snehal-Singh174/Cricket-Chirps-Prediction',
            icon: Icons.book_outlined,
            title: 'Cricket Chirps Prediction',
            des:
                'A ML Project in which cricket chirps are predicted using Linear Regression, Decision Tree and Random Forest Algorithm',
          ),
          SizedBox(
            height: 20,
          ),
          Cardwidget(
              link: 'https://github.com/Snehal-Singh174/Emotion-Detection',
              icon: Icons.book_outlined,
              title: 'Emotion Detection',
              des:
                  'Facial emotion recognition is the process of detecting human emotions from facial expressions.'),
        ],
      ),
    );
  }
}
