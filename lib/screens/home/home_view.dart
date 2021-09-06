import 'package:dribbble_ui/constants/color.dart';
import 'package:dribbble_ui/screens/home/components/new_drawer.dart';
import 'package:dribbble_ui/screens/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:architecture/architecture.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
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
              "Hello Daniel 👋",
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Have a ",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: darkBlue),
                        children: [
                          TextSpan(
                            text: "fun\n",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: red),
                          ),
                          TextSpan(text: "interaction"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue[100].withOpacity(0.3),
                              offset: Offset(-10, 10),
                              spreadRadius: 5,
                              blurRadius: 1),
                          BoxShadow(
                              color: Colors.red[100].withOpacity(0.3),
                              offset: Offset(10, 10),
                              spreadRadius: 5,
                              blurRadius: 1),
                          BoxShadow(
                            color: white,
                            offset: Offset(-5, -5),
                            blurRadius: 5,
                            spreadRadius: 10,
                          ),
                          BoxShadow(
                            color: white,
                            offset: Offset(5, -5),
                            blurRadius: 5,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      height: 120,
                      width: double.infinity,
                      child: Text("data"),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 250,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue[200].withOpacity(0.2),
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "925 servers\navailable",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: white,
                                  ),
                                  child: Text(
                                    "Servers",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 130,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.red[200].withOpacity(0.2),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "250 Live is ready\nto watch",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: red,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 35, vertical: 12),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: white,
                                        ),
                                        child: Text(
                                          "Servers",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: red,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 55, vertical: 25),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey[100]),
                                  borderRadius: BorderRadius.circular(50),
                                  color: white,
                                ),
                                child: Text(
                                  "More...",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: darkBlue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
