import 'package:deal/src/screens/preferences/widgets/preferences_custom_title.dart';
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

        return Container(
          padding: EdgeInsets.only(bottom: 20),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: widget.preferences.length,
            itemBuilder: (context, i) {
              return widget.preferences[i];
            },
            separatorBuilder: (context, i){
              if( widget.preferences[i] is! PreferenceCustomTitle){
                return Divider(height: 1, color: Color(0xffa3a3a3));
              } else {
                return Divider(height: 0, color: Colors.white);
              }
            },
          )
        );
      },
    );
  }

}
