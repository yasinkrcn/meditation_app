import 'package:fluttertoast/fluttertoast.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';

void showToast({String? message}) {
  Fluttertoast.showToast(
    msg: message ?? 'Boş bırakılamaz',
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: AppColors.blackColor,
  );
}
