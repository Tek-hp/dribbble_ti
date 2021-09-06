import 'package:dribbble_ui/screens/dashboard/components/dashboard_bnb.dart';
import 'package:dribbble_ui/screens/dashboard/dashboard_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:architecture/architecture.dart';

class DashBoardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<DashboardViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          bottomNavigationBar: DashboardBNB(model),
          body: PageView(
            physics: BouncingScrollPhysics(),
            controller: model.viewPageController,
            onPageChanged: model.onPageSlideChange,
            children: model.views,
          ),
        );
      },
    );
  }
}
