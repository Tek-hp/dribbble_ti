import 'package:architecture/architecture.dart';
import 'package:dribbble_ui/constants/route_names.dart';

class GetStartedViewModel extends BaseViewModel {
  onPressedNext() {
    goto(DashBoardViewRoute);
  }
}
