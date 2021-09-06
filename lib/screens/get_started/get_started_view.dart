import 'package:architecture/architecture.dart';
import 'package:dribbble_ui/constants/color.dart';
import 'package:dribbble_ui/screens/get_started/get_started_viewmodel.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<GetStartedViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Find your Best\nFriends",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: darkBlue),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Interact with different people\nand make good friends",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: 100,
                      color: darkBlue,
                      child: IconButton(
                        icon: Icon(Icons.arrow_right_alt_rounded),
                        onPressed: () => model.onPressedNext(),
                        color: white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
