import '../../constant/navigation/navConstant.dart';
import '../../../features/furniture/pages/allFurniture.dart';
import '../../../features/furniture/pages/notFound.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.HOME_VIEW:
        return normalNavigate(FurnitureHomeView());
        /*       case NavigationConstants.FURNITURE_DETAILS_VIEW:
                return normalNavigate(FurnitureDetails()); */
              default:
                return MaterialPageRoute(
                  builder: (context) => FurnitureNotFound(),
                );
            }
          }
        
          MaterialPageRoute normalNavigate(Widget widget) {
            return MaterialPageRoute(
              builder: (context) => widget,
            );
          }
        }
        
        class FurnitureHomeView {
}