import 'package:datingapp/radial_progress.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:icons_plus/icons_plus.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          RadialProgress(
            width: 5,
            goalCompleted: 0.8,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: ClipOval(
                child: Image.asset(
                  'assets/face.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'John Gordon',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                ', 24',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                EvaIcons.pin,
                color: Colors.white,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                '3.4 Kilometers',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}
