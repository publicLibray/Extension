import 'package:flutter/material.dart';

extension ExtendedText on Widget {
  onTapGesture(Function onTap) {
    return Container(
      child: InkWell(
        onTap: onTap,
        child: this,
      ),
    );
  }

  pushNamed(BuildContext context, {@required String routeName}) {
    assert(routeName != null);
    return Container(
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, routeName),
        child: this,
      ),
    );
  }

  push(BuildContext context, {@required Widget destination}) {
    assert(context != null);
    assert(destination != null);
    return Container(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        ),
        child: this,
      ),
    );
  }
}
