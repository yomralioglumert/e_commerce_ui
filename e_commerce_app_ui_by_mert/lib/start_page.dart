import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bottom_bar/bottom_bar.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _currentPage = 0;
  final _pageController = PageController();

  get child => null;

  get icon => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black, size: 40),
        title: const Text(
          'NaturioShop',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.brown,
                      size: 32,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    'Welcome back Shafiqul',
                    style: TextStyle(fontFamily: 'Oswald', color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.brown.withOpacity(0.4)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(35)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: const BorderSide(color: Colors.black)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.document_scanner_outlined,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    hintText: 'Search',
                    hintStyle:
                        const TextStyle(fontFamily: 'Oswald', fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'All',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Facial',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 20,
                                  color: Colors.grey.shade500),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Body Special',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 20,
                                  color: Colors.grey.shade500),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Hair Parfume',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 20,
                                  color: Colors.grey.shade500),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Parfume',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 20,
                                  color: Colors.grey.shade500),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                height: MediaQuery.of(context).size.height - 300,
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/far.jpg',
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 60, top: 15),
                                    child: Container(
                                      height: 20,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(35),
                                          color: Colors.grey.withOpacity(0.4)),
                                      child: const Center(
                                        child: Text(
                                          '20% off',
                                          style: TextStyle(
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/parfume.jpg'))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 60, top: 15),
                                    child: Container(
                                      height: 20,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(35),
                                          color: Colors.grey.withOpacity(0.4)),
                                      child: const Center(
                                        child: Text(
                                          '20% off',
                                          style: TextStyle(
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    'Foundation',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('\$26.90')
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    'Foundation',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Parfume',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('\$56.00')
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/ruj.jpg',
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/toplu paket.jpg'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    'Lipstick',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('\$18.45')
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    'Discount Package',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('\$36.90')
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(color: Colors.red),
          Container(color: Colors.greenAccent.shade700),
          Container(color: Colors.orange),
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        height: 60,
        backgroundColor: Colors.transparent,
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: const Icon(
              Icons.home,
              size: 40,
            ),
            title: const Text('Home'),
            activeColor: Colors.brown.withOpacity(0.5),
          ),
          BottomBarItem(
            icon: const Center(
              child: Icon(
                Icons.message_rounded,
                size: 35,
              ),
            ),
            title: const Text('Home'),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400,
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.local_grocery_store,
              size: 35,
            ),
            title: const Text('Account'),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400,
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.account_box,
              size: 35,
            ),
            title: const Text('Settings'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
