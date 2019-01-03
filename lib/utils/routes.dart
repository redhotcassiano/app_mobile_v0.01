import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:app_mobile/ui/details/consult_detail_page.dart';

class Routes {
  static final Router _router = new Router();

  static var consultDetailHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {  
      debugPrint(params["id"].toString().substring(1, params["id"].toString().length-1));
      return new ConsultDetailPage(params["id"].toString().substring(1, params["id"].toString().length-1));
    }
  );

  static void initRoutes() {
    _router.define("/detail/:id", handler: consultDetailHandler);
  }

  static void navigateTo(context, String route, {TransitionType transition}) {
    _router.navigateTo(context, route, transition: transition);
  }
}