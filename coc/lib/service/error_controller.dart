

import 'package:coc/service/app_exception.dart';
import 'package:coc/utils/dialog_helper.dart';

class ErrorController {
  void handleError(error) {
    if (error is BadRequestException) {
      DialogHelper.showErrorDialog("Error", error.message);
    } else if (error is FetchDataException) {
      DialogHelper.showErrorDialog("Error", error.message);
    } else if (error is ApiNotrespondingException) {
      DialogHelper.showErrorDialog("Error", error.message);
    } else if (error is UnauthorizedException) {
      DialogHelper.showErrorDialog("Error", error.message);
    }
  }
}
