import 'package:datingapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class superlikes extends StatelessWidget {
  const superlikes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'select',
              style: TextStyle(color: primaryColor, fontSize: 18),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Super Likes Me',
              style: TextStyle(color: Colors.black, fontSize: 32),
            ),
          ),
          Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(children: [
              Text(
                'Super Likes',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '20',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: ListTile(
                      title: Text(
                        'James',
                      ),
                      subtitle: Row(children: [
                        Icon(
                          EvaIcons.pin,
                          size: 16,
                        ),
                        Text(
                          '  34 Kilometers',
                          style: TextStyle(fontSize: 14),
                        )
                      ]),
                      leading: ClipOval(
                          child: Image.asset(
                        'assets/face.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      )),
                      trailing: SizedBox(
                        width: 80,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 10,
                            ),
                            Text(
                              '  ONLINE',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class NarrowAppBar extends StatelessWidget {
  final Widget leading, trailing;

  NarrowAppBar({Key? key, required this.leading, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 16,
      ),
      child: Row(
        children: <Widget>[
          leading,
          Spacer(),
          trailing,
        ],
      ),
    );
  }
}
