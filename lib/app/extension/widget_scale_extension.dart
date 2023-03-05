
import '../constants/app/app_constants.dart';
import '../navigation/size_config.dart';
extension WidgetsScale on num {
  double get horizontalScale => this * (SizeConfig.screenWidth / designWith);
  double get verticalScale => this * (SizeConfig.screenHeight / designHeight);
}

