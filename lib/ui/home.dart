import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: -20,
                child: Image.asset('assets/images/bg-2.png'),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hi, Muhammad',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Upgrade',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                            padding: EdgeInsets.symmetric(
                              horizontal: 35,
                            ),
                            elevation: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/banner.png',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/icon.png',
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Saldo',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Rp. 100.000',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'assets/images/scan.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Bayar',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('assets/images/line.png'),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                    'assets/images/transaction.png'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Transfer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('assets/images/line.png'),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset('assets/images/wallet.png'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Top Up',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
