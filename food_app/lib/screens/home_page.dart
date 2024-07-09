import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: 0.1 * size.height,
            width: size.width,
            color: Colors.grey,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Hello",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 0.2 * size.height,
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 0.2 * size.width,
                  child: Text("Walid"),
                ),
                SizedBox(
                  width: 0.2 * size.width,
                  // color: Colors.black,
                  child: Text("Walid"),
                ),
                SizedBox(
                  width: 0.2 * size.width,
                  child: Text("oussama"),
                ),
                SizedBox(
                  width: 0.2 * size.width,
                  child: const Text("oussama"),
                ),
              ],
            ),
          ),
          TextButton(
             onPressed: _launchURL,
            child: const Text("hello"))
        ],
      )),
    );
  }

  _launchURL() async {
   final Uri url = Uri.parse('https://flutter.dev');
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }
}

}

