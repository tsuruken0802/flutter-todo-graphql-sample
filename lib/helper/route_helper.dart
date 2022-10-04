import 'package:flutter/material.dart';

class RouteHelper {
  /// プッシュで遷移する
  static Future push(
    BuildContext context,
    Widget nextScreen, {
    bool animated = true,
  }) {
    Route route = animated
        ? MaterialPageRoute(builder: (context) => nextScreen)
        : PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => nextScreen,
            transitionDuration: const Duration(seconds: 0),
          );
    return Navigator.of(context).push(route);
  }

  static pop(BuildContext context) {
    Navigator.of(context).pop();
  }

  static dismiss<T extends Object?>(BuildContext context, {T? object}) {
    Navigator.of(context, rootNavigator: true).pop(object);
  }
}
