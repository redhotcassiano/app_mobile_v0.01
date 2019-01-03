import 'dart:async';
import 'package:flutter/material.dart';
import 'package:app_mobile/models/list_consult.dart';
import 'package:app_mobile/ui/list_consult_row.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomeList extends StatefulWidget {
  HomeList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  

  Future<void> _handleRefresh() {
    final Completer<void> completer = Completer<void>();
    Timer(const Duration(seconds: 3), () {
      completer.complete();
    });
    return completer.future.then<void>((_) {
      _scaffoldKey.currentState?.showSnackBar(SnackBar(
          content: const Text('Refresh complete'),
          action: SnackBarAction(
              label: 'RETRY',
              onPressed: () {
                _refreshIndicatorKey.currentState.show();
              })));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Flexible(
      child: new Container(
          color: Colors.white,
          child: LiquidPullToRefresh(
            key: _refreshIndicatorKey,
            onRefresh: _handleRefresh,
            child:new ListView.builder( // aqui;
              itemExtent: 160.0,
              itemCount: ListConsult.consults.length,
              itemBuilder: (_, index) => new ListConsultRow(ListConsult.consults[index]),
            ),
        ),
      )
    );
  }
}






