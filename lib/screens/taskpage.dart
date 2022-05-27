import 'package:flutter/material.dart';
import 'package:to_do/widgets.dart';

class Taskpage extends StatefulWidget {
  const Taskpage({Key? key}) : super(key: key);

  @override
  State<Taskpage> createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    top: 24.0,
                    bottom: 6.0,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Image(
                            image:
                                AssetImage('assets/images/back_arrow_icon.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Text Title",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF211551),
                          ),
                        ),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 12.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Description for the Task...",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24.0,
                      )),
                ),
              ),
              TodoWidget(
                text: "Create your first Task.",
                isDone: false,
              ),
              TodoWidget(
                text: "Create your first Todo as well",
                isDone: false,
              ),
              TodoWidget(
                isDone: true,
              ),
              TodoWidget(
                isDone: true,
              ),
            ],
          ),
          Positioned(
            bottom: 24.0,
            right: 24.0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Taskpage()
                  ),
                );
              },
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFE3577),
                  borderRadius: BorderRadiusDirectional.circular(20.0),
                ),
                child: Image(
                    image: AssetImage(
                      'assets/images/delete_icon.png',
                    )),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
