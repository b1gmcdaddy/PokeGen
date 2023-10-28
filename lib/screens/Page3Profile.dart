import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/avatar.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'Jolony Tim Tangpuz',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            const Text(
              'Aspiring Tambay',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 30,
                ),
                SizedBox(width: 20),
                FaIcon(
                  FontAwesomeIcons.twitter,
                  size: 30,
                ),
                SizedBox(width: 20),
                FaIcon(
                  FontAwesomeIcons.squareInstagram,
                  size: 30,
                ),
                SizedBox(width: 20),
                FaIcon(
                  FontAwesomeIcons.github,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      '12',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Posts'),
                  ],
                ),
                SizedBox(width: 40),
                Column(
                  children: <Widget>[
                    Text(
                      '842',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Followers'),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: <Widget>[
                    Text(
                      '678',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Following'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 330,
              child: Divider(
                thickness: 0.5,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'About Me',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Varius quam quisque id diam vel quam elementum pulvinar. Ante metus dictum at tempor commodo ullamcorper a. Egestas egestas fringilla phasellus faucibus. Viverra suspendisse potenti nullam ac tortor vitae purus. Duis tristique sollicitudin nibh sit. Neque gravida in fermentum et sollicitudin. Sollicitudin nibh sit amet commodo. Consequat interdum varius sit amet mattis vulputate enim nulla aliquet. Eu sem integer vitae justo. Fames ac turpis egestas integer eget aliquet nibh praesent. Nec tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Diam in arcu cursus euismod quis viverra.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
