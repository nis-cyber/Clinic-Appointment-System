import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white24,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                              AssetImage("assets/images/doctor.jpg"),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: Colors.white12,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Hello Sir/Madam",
                          style: TextStyle(
                            color: Colors.white24,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "Where Health Meets Mangement",
                        style: TextStyle(
                          color: Colors.white12,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.lightGreen,
                                blurRadius: 6,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here...",
                              hintStyle: TextStyle(
                                color:  Colors.black.withOpacity(0.5),
                              ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 25,
                                )
                            ),
                          ),
                          ),
                      ],
                    ),
                  ),
                   Padding(padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey.withOpacity(0.7),
                        )
                  ),
                   ),
                  SizedBox(height: 15),
                  Container(
                    height: 100,
                      child: ListView.builder(itemBuilder: itemBuilder),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
