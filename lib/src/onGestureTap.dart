import 'package:flutter/material.dart';

extension ExtendedText on Widget {
  onTapGesture(Function onTap) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: this,
      ),
    );
  }

  pushNamed({@required String routeName}) {
    final GlobalKey<NavigatorState> _navigatorKey =
        new GlobalKey<NavigatorState>();
    return Container(
      child: GestureDetector(
        onTap: () => _navigatorKey.currentState.pushNamed(routeName),
        child: this,
      ),
    );
  }

  push({@required Widget destination}) {
    assert(destination != null);
    final GlobalKey<NavigatorState> _navigatorKey =
        new GlobalKey<NavigatorState>();
    return Container(
      child: GestureDetector(
        onTap: () => _navigatorKey.currentState.push(
          MaterialPageRoute(builder: (context) => destination),
        ),
        child: this,
      ),
    );
  }
}
