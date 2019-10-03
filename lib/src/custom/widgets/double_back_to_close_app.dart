import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';
import 'package:fluttertoast/fluttertoast.dart';


class DoubleBackToCloseApp extends StatefulWidget {

  final Widget child;
  final Duration duration;
  final String text;

  const DoubleBackToCloseApp({
    Key key,
    @required this.child,
    this.text,
    this.duration = const Duration(microseconds: 500),
  }) : assert(child != null),
        super(key: key);

  @override
  DoubleBackToCloseAppState createState() => DoubleBackToCloseAppState();
}


class DoubleBackToCloseAppState extends State<DoubleBackToCloseApp> {

  DateTime lastTimeBackButtonWasTapped;

  bool get isAndroid => Theme.of(context).platform == TargetPlatform.android;

  bool get isVisible =>
      (lastTimeBackButtonWasTapped == null) ||
          (DateTime.now().difference(lastTimeBackButtonWasTapped) > widget.duration);

  @override
  Widget build(BuildContext context) {
    ensureThatContextContainsScaffold(context);

    if (isAndroid) {
      return WillPopScope(
        onWillPop: () => onWillPop(context),
        child: widget.child,
      );
    } else {
      return widget.child;
    }
  }

  Future<bool> onWillPop(BuildContext context) async {
    if (isVisible) {
      String text = (widget.text == null) ? S.of(context).prompt_double_tab : widget.text;
      lastTimeBackButtonWasTapped = DateTime.now();
      Fluttertoast.showToast(msg: text);
      return false;
    } else {
      return true;
    }
  }

  void ensureThatContextContainsScaffold(BuildContext context) {
    if (Scaffold.of(context, nullOk: true) == null) {
      throw AssertionError(
        '`DoubleBackToCloseApp` should be wrapped in a `Scaffold`.',
      );
    }
  }
}
