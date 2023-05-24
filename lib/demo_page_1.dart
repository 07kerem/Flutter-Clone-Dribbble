// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter_application_1/exercises.dart';

import 'emoticon_face.dart';
import 'package:flutter/material.dart';

class demo_page_1 extends StatefulWidget {
  const demo_page_1({super.key});

  @override
  State<demo_page_1> createState() => _demo_page_1State();
}

class _demo_page_1State extends State<demo_page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.white, items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.black54,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black54,
            ),
            label: ''),
      ]),
      // SAFE AREA ARAŞTIR !!!!!!!!
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // hi jared
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Kerem!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '3 May, 2023',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),

                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )

                      // notification
                    ],
                  ),
                  // search bar
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Search', style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  // how do you fell?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '\u{1F622}',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😊',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😃',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😂',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0)),
                child: Container(
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Excercies',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          // LİST VİEW
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                exercises(
                                  icons: Icon(Icons.favorite),
                                  exercisesName: 'Speaking Skills',
                                  numberOfExcersises: 16,
                                  colors: Colors.orange,
                                ),
                                exercises(
                                  icons: Icon(Icons.person),
                                  exercisesName: 'Reading Skills',
                                  numberOfExcersises: 8,
                                  colors: Colors.blue,
                                ),
                                exercises(
                                  icons: Icon(Icons.star),
                                  exercisesName: 'Writing Skills',
                                  numberOfExcersises: 20,
                                  colors: Colors.pink,
                                ),
                                exercises(
                                  icons: Icon(Icons.access_alarm_outlined),
                                  exercisesName: 'After Skills',
                                  numberOfExcersises: 10,
                                  colors: Color.fromARGB(255, 131, 241, 5),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
