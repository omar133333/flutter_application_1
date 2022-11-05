import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => 0,
          ),
          title: Row(
            children: [
              const Text('person   '),
              const CircleAvatar(
                backgroundImage: AssetImage('images/person.jpg'),
              )
            ],
          ),
          actions: [
            Icon(Icons.video_call),
            Icon(Icons.call),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
          backgroundColor: Colors.black,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          elevation: 1,
          child: const Icon(
            Icons.mic,
            size: 20,
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: 500,
              child: Image.asset(
                'images/background.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20, left: 30),
                alignment: AlignmentDirectional.topStart,
                child: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/person1.jpg'),
                )),
            Container(
                margin: const EdgeInsets.only(top: 100, right: 30),
                alignment: AlignmentDirectional.topEnd,
                child: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/person2.jpg'),
                )),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(top: 30, right: 60),
              child: const Text(
                'this is my first massage',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 110, left: 60),
              // decoration: BoxDecoration(
              //     border: Border.all(color: Colors.white),
              //     borderRadius: BorderRadius.circular(50)),
              child: const Text(
                'this is my second massage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 100, bottom: 15),
                alignment: AlignmentDirectional.bottomStart,
                child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Type a massage',
                        hintStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.emoji_emotions,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        )))),
          ],
        ));
  }
}
