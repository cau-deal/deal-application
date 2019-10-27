import 'package:deal/src/custom/dialogs/confirm_dialog.dart';
import 'package:flutter/material.dart';

class PreferenceCustomDialogLink<T> extends StatelessWidget {
  final String title;
  final String desc;
  final Widget dialog;
  final Widget leading;
  final Widget trailing;
  final bool barrierDismissible;

  final Function onPop;

  PreferenceCustomDialogLink(this.title, {@required this.dialog, this.desc, this.leading, this.trailing, this.onPop, this.barrierDismissible = true});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () async {
        final ConfirmAction res = await showDialog(context: context, builder: (context) => dialog, barrierDismissible: barrierDismissible);
        if (res == ConfirmAction.ACCEPT && onPop != null) onPop();
      },
      title: Text(title),
      subtitle: desc == null ? null : Text(desc),
      leading: leading,
      trailing: trailing,
    );
  }
}
