// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0,
          ),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 32.0,
                    ),
                    child: Image(
                      image: AssetImage(
                        'assets/images/logo.png',
                      ),
                    ),
                  ),
                  TaskCardWidget(
                    title: "Get Started!",
                    desc: "Hello User! Welcome to To_Do App, this is default task that you can edit or delete to start using the app.",
                  ),
                  TaskCardWidget(),
                  TaskCardWidget(),
                  TaskCardWidget(),
                  TaskCardWidget(),

                ],
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF7349FE),
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  child: Image(
                      image: AssetImage(
                        'assets/images/add_icon.png',
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}