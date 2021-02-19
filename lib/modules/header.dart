import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopHeader();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopHeader();
      } else {
        return MobileHeader();
      }
    });
  }
}

class DesktopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: [
              Text(
                'Hi! I\'m Snehal Singh',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Flutter | Android | Machine Learning',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  //color: Colors.black
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Color.fromRGBO(40, 103, 178, 1),
                          size: 40,
                        ),
                        onPressed: () {},
                      )),
                  Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.twitterSquare,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.githubSquare,
                          size: 40,
                        ),
                        onPressed: () {},
                      )),
                  Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.googlePlusSquare,
                          color: Color.fromRGBO(40, 103, 178, 1),
                          size: 40,
                        ),
                        onPressed: () {},
                      )),
                  Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.instagramSquare,
                          size: 40,
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 180,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Contact Me',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 220,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'See My Resume',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: Image.asset(
                'assets/header.png',
                fit: BoxFit.contain,
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class MobileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      child: Container(
        child: Column(
          children: [
            Text(
              'Hi! I\'m Snehal Singh',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                //color: Colors.black
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Flutter | Android | Machine Learning',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                //color: Colors.black
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Color.fromRGBO(40, 103, 178, 1),
                          size: 40,
                        ),
                        onPressed: () {},
                      )),
                ),
                Expanded(
                  child: Container(
                    width: 60,
                    height: 60,
                    child: GestureDetector(
                      child: Icon(
                        FontAwesomeIcons.twitterSquare,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.githubSquare,
                          size: 40,
                        ),
                        onPressed: () {},
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.googlePlusSquare,
                          color: Color.fromRGBO(40, 103, 178, 1),
                          size: 40,
                        ),
                        onPressed: () {},
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.instagramSquare,
                          size: 40,
                        ),
                        onPressed: () {},
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 220,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Contact Me',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 220,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'See My Resume',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Image.asset(
                'assets/header.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
