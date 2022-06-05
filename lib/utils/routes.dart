import 'package:flutter/cupertino.dart';
import 'package:outcatser_2nd_pro/models/app_routes.dart';

import '../screens/product_1_screen/page/product_1_screen.dart';
import '../screens/product_2_screen/page/product_2_screen.dart';
import '../screens/product_3_screen/page/product_3_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().product1Screen: (context) => const Product1Screen(),
  AppRoutes().product2Screen: (context) => const Product2Screen(),
  AppRoutes().product3Screen: (context) => const Product3Screen(),
};
