import 'package:flutter/material.dart';
import 'package:preferences/preference_service.dart';
import 'package:preferences/preference_title.dart';

class PreferenceCustomPage extends StatefulWidget {
  final List preferences;
  PreferenceCustomPage(this.preferences);

  PreferencePageState createState() => PreferencePageState();
}

class PreferencePageState extends State<PreferenceCustomPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PrefService.init(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Container();

        return ListView.separated(
          padding: const EdgeInsets.only(left:15, right:15),
          itemCount: widget.preferences.length,
          itemBuilder: (context, i) {
            return widget.preferences[i];
          },
          separatorBuilder: (context, i){
            if( widget.preferences[i] is! PreferenceTitle){
              return Divider(height: 1, color: Color(0xffe3e3e3));
            } else {
              return Divider(height: 0, color: Colors.white);
            }
          },
        );
      },
    );
  }
}
