import 'package:datingapp/colors.dart';
import 'package:datingapp/myinfo.dart';
import 'package:datingapp/opacityiamge.dart';
import 'package:datingapp/profileinfocard.dart';
import 'package:datingapp/superlikes.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: <Widget>[
        Column(
          children: [
            const Expanded(
                flex: 4,
                child: Stack(children: [
                  OpaqueImage(
                    imageurl: 'assets/face.png',
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'My Profile',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        MyInfo()
                      ],
                    ),
                  )
                ])),
            SizedBox(
              height: 40,
            ),
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: Table(
                    children: [
                      const TableRow(children: [
                        ProfileInfoCard(
                          firsttext: '13',
                          lasttext: 'New Matches',
                          icon: Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                        ),
                        ProfileInfoCard(
                          firsttext: '21',
                          lasttext: 'Unmatched',
                          icon: Icon(
                            Icons.face_retouching_off_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                      const TableRow(children: [
                        ProfileInfoCard(
                          firsttext: '234',
                          lasttext: 'Matches',
                          icon: Icon(
                            Icons.checklist,
                            color: Colors.black,
                          ),
                        ),
                        ProfileInfoCard(
                          firsttext: '42',
                          lasttext: 'Rematches',
                          icon: Icon(
                            Icons.refresh,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        const ProfileInfoCard(
                          firsttext: '440',
                          lasttext: 'Profile Visits',
                          icon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => superlikes()));
                          },
                          child: const ProfileInfoCard(
                            firsttext: '42',
                            lasttext: 'Super likes',
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ))
          ],
        ),
        Positioned(
          top: screenheight * (3 / 8),
          left: 16,
          right: 16,
          child: Container(
            height: 80,
            child: Row(children: [
              middlecard("54%", "Progress"),
              Card(
                color: primaryColor,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                  child: Icon(
                    EvaIcons.activity,
                    color: Colors.white,
                  ),
                ),
              ),
              middlecard('  135   ', '   Level ')
            ]),
          ),
        )
      ]),
    );
  }

  Card middlecard(String top, String bottom) {
    return Card(
      color: primaryColor,
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              top,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              bottom,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white54,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
