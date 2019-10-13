import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';
import 'package:preferences/preferences.dart';

import 'widgets/preferences_page.dart';

class PreferencesPage extends StatefulWidget {
  @override
  PreferencesState createState() { return PreferencesState(); }
}

class PreferencesState extends State<PreferencesPage>{

  @override
  Widget build(BuildContext ctx) {
    return new CommonAppBarContainer(
      showBottomBorder: false,
      text: S.of(ctx).title_preferences,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: MediaQuery.removePadding(
              context: ctx,
              removeTop: true,
              child: PreferenceCustomPage([
                PreferenceTitle('General'),
                DropdownPreference(
                  'Start Page',
                  'start_page',
                  defaultVal: 'Timeline',
                  values: ['Posts', 'Timeline', 'Private Messages'],
                ),
                PreferenceTitle('Personalization'),
                RadioPreference(
                  'Light Theme',
                  'light',
                  'ui_theme',
                  isDefault: true,
                  onSelect: () {

                  },
                ),
                RadioPreference(
                  'Dark Theme',
                  'dark',
                  'ui_theme',
                  onSelect: () {

                  },
                ),
                PreferenceTitle('Messaging'),
                PreferencePageLink(
                  'Notifications',
                  leading: Icon(Icons.message),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  page: PreferencePage([
                    PreferenceTitle('New Posts'),
                    SwitchPreference(
                      'New Posts from Friends',
                      'notification_newpost_friend',
                      defaultVal: true,
                    ),
                    PreferenceTitle('Private Messages'),
                    SwitchPreference(
                      'Private Messages from Friends',
                      'notification_pm_friend',
                      defaultVal: true,
                    ),
                    SwitchPreference(
                      'Private Messages from Strangers',
                      'notification_pm_stranger',
                      onEnable: () async {
                        // Write something in Firestore or send a request
                        await Future.delayed(Duration(seconds: 1));

                        print('Enabled Notifications for PMs from Strangers!');
                      },
                      onDisable: () async {
                        // Write something in Firestore or send a request
                        await Future.delayed(Duration(seconds: 1));

                        // No Connection? No Problem! Just throw an Exception with your custom message...
                        throw Exception('No Connection');

                        print('Disabled Notifications for PMs from Strangers!');
                      },
                    ),
                  ]),
                ),
                PreferenceTitle('User'),
                TextFieldPreference(
                  'Display Name',
                  'user_display_name',
                ),
                TextFieldPreference('E-Mail', 'user_email',
                    defaultVal: 'email@example.com'),
                PreferenceText(
                  PrefService.getString('user_description') ?? '',
                  style: TextStyle(color: Colors.grey),
                ),
                PreferenceDialogLink(
                  'Edit description',
                  dialog: PreferenceDialog(
                    [
                      TextFieldPreference(
                        'Description',
                        'user_description',
                        padding: const EdgeInsets.only(top: 8.0),
                        autofocus: true,
                        maxLines: 2,
                      )
                    ],
                    title: 'Edit description',
                    cancelText: 'Cancel',
                    submitText: 'Save',
                    onlySaveOnSubmit: true,
                  ),
                  onPop: () => setState(() {}),
                ),
                PreferenceTitle('Content'),
                PreferenceDialogLink(
                  'Content Types',
                  dialog: PreferenceDialog(
                    [
                      CheckboxPreference('Text', 'content_show_text'),
                      CheckboxPreference('Images', 'content_show_image'),
                      CheckboxPreference('Music', 'content_show_audio')
                    ],
                    title: 'Enabled Content Types',
                    cancelText: 'Cancel',
                    submitText: 'Save',
                    onlySaveOnSubmit: true,
                  ),
                ),
                PreferenceTitle('More Dialogs'),
                PreferenceDialogLink(
                  'Android\'s "ListPreference"',
                  dialog: PreferenceDialog(
                    [
                      RadioPreference(
                          'Select me!', 'select_1', 'android_listpref_selected'),
                      RadioPreference(
                          'Hello World!', 'select_2', 'android_listpref_selected'),
                      RadioPreference('Test', 'select_3', 'android_listpref_selected'),
                    ],
                    title: 'Select an option',
                    cancelText: 'Cancel',
                    submitText: 'Save',
                    onlySaveOnSubmit: true,
                  ),
                ),
                PreferenceDialogLink(
                  'Android\'s "ListPreference" with autosave',
                  dialog: PreferenceDialog(
                    [
                      RadioPreference(
                          'Select me!', 'select_1', 'android_listpref_auto_selected'),
                      RadioPreference(
                          'Hello World!', 'select_2', 'android_listpref_auto_selected'),
                      RadioPreference(
                          'Test', 'select_3', 'android_listpref_auto_selected'),
                    ],
                    title: 'Select an option',
                    cancelText: 'Close',
                  ),
                ),
                PreferenceDialogLink(
                  'Android\'s "MultiSelectListPreference"',
                  dialog: PreferenceDialog(
                    [
                      CheckboxPreference('A enabled', 'android_multilistpref_a'),
                      CheckboxPreference('B enabled', 'android_multilistpref_b'),
                      CheckboxPreference('C enabled', 'android_multilistpref_c'),
                    ],
                    title: 'Select multiple options',
                    cancelText: 'Cancel',
                    submitText: 'Save',
                    onlySaveOnSubmit: true,
                  ),
                ),
                PreferenceHider([
                  PreferenceTitle('Experimental'),
                  SwitchPreference(
                    'Show Operating System',
                    'exp_showos',
                    desc: 'This option shows the users operating system in his profile',
                  )
                ], '!advanced_enabled'), // Use ! to get reversed boolean values
                PreferenceTitle('Advanced'),
                CheckboxPreference(
                  'Enable Advanced Features',
                  'advanced_enabled',
                  onChange: () {
                    setState(() {});
                  },
                  onDisable: () {
                    PrefService.setBool('exp_showos', false);
                  },
                )
              ])
          )
        )
      )
    );
  }


}