import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:flutter/material.dart';

class PreferenceCustomPageLink extends StatelessWidget {
  final String title;
  final String pageTitle;
  final String desc;
  final Widget page;
  final Widget leading;
  final Widget trailing;

  PreferenceCustomPageLink(this.title, {@required this.page, this.desc, this.pageTitle, this.leading, this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CommonAppBarContainer(
                text: pageTitle ?? this.title,
                child: page,
              ))),
      title: Text(title),
      subtitle: desc == null ? null : Text(desc),
      leading: leading,
      trailing: trailing,
    );
  }
}
