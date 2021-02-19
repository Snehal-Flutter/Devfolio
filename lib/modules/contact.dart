import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  final ckey;

  Contact(this.ckey);
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopContact(this.ckey);
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopContact(this.ckey);
      } else {
        return MobileContact(this.ckey);
      }
    });
  }
}

class DesktopContact extends StatelessWidget {
  final ckey;
  DesktopContact(this.ckey);
  @override
  Widget build(BuildContext context) {
    return Container(
      key: ckey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Text(
                  "Here I'm!!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Want to Collaborate or need any help then reach out to me",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Icon(Icons.call_outlined), Text('+917486918587')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.mail_outline),
                    Text('singhsnehal174@gmail.com')
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Image.asset(
                'assets/contact.png',
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MobileContact extends StatelessWidget {
  final key;
  MobileContact(this.key);
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Here I'm!!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Want to Collaborate or need any help then reach out to me",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.call_outlined), Text('+917486918587')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mail_outline),
              Text('singhsnehal174@gmail.com')
            ],
          ),
          Container(
            child: Image.asset(
              'assets/contact.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
