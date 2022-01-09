import 'package:e_commerce_app_ui_by_mert/start_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CommerceApp());

class CommerceApp extends StatelessWidget {
  const CommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: myHomepage());
  }
}

// ignore: camel_case_types
class myHomepage extends StatelessWidget {
  const myHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/mainpage.jpg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 200),
            child: Container(
              alignment: Alignment.center,
              height: 300,
              width: 150,
              child: const Text(
                'PROTECT SKIN BY NATURAL PRODUCT',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 40,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const StartPage()));
                  },
                  child: const Center(
                    child: Text('START',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 24,
                            color: Colors.black)),
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
