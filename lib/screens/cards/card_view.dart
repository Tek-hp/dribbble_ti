import 'package:dribbble_ui/constants/color.dart';
import 'package:dribbble_ui/screens/cards/card_viewmodel.dart';
import 'package:dribbble_ui/screens/home/components/new_drawer.dart';
import 'package:flutter/material.dart';
import 'package:architecture/architecture.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<CardViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          key: model.scaffoldKey,
          backgroundColor: white,
          drawer: NewDrawer(),
          appBar: AppBar(
            backgroundColor: white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.drag_handle,
                color: darkBlue,
              ),
              onPressed: () {},
            ),
            title: Text(
              "Story",
              style: TextStyle(color: darkBlue),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: darkBlue,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SingleChildScrollView(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: red,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Image.network("https://picsum.photos/200"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: red,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Image.network("https://picsum.photos/200"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: red,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Image.network("https://picsum.photos/200"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: red,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Image.network("https://picsum.photos/200"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Image.network(
                          "https://picsum.photos/400/500",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "1 k",
                              style: TextStyle(color: white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("❤"),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          color: black,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                    NetworkImage("https://picsum.photos/200"),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jenny Moise',
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "NY",
                                    style: TextStyle(color: grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
