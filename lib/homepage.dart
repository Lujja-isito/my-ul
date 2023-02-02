import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sample/pages/account.dart';
import 'package:sample/pages/order.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(Icons.add, size: 30, color: Colors.white),
    Icon(Icons.settings_input_antenna_sharp, size: 30, color: Colors.white),
    Icon(Icons.person, size: 30, color: Colors.white)
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            color: Colors.black45,
            items: items,
            index: index,
            onTap: (selctedIndex) {
              setState(() {
                index = selctedIndex;
              });
            },
            height: 70,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Color(0xFFF3200B),
            animationDuration: const Duration(milliseconds: 300),
            // animationCurve: ,
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: 3,),

                  // -- page header
                  Column(
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF3200B), width: 1),

                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Text(
                    'Catalogues',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 360,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10, top: 5),
                            child: Container(

                              //padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 125,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/D.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "3 sections",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            "Programming languages",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 360,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10, top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Flutter crash course",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Flexible(
                                          child: Image(
                                        image: AssetImage('assets/try.png'),
                                        width: 110,
                                        height: 110,
                                      )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: CircleBorder(),
                                            backgroundColor: Colors.black),
                                        onPressed: () {},
                                        child: Icon(Icons.play_arrow),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "3 sections",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            "Programming languages",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 360,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10, top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Flutter crash course",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Flexible(
                                          child: Image(
                                        image: AssetImage('assets/try.png'),
                                        width: 110,
                                        height: 110,
                                      )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: CircleBorder(),
                                            backgroundColor: Colors.black),
                                        onPressed: () {},
                                        child: Icon(Icons.play_arrow),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "3 sections",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            "Programming languages",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const People();
        break;
      case 1:
        widget = const Profile();
        break;
      default:
        widget = const People();
        break;
    }
    return widget;
  }
}
