import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';

import 'widgets/Entry.dart';
import 'widgets/EntryItem.dart';


final List<Entry> data = <Entry>[
  Entry(
    '이용 약관',
    <Entry>[
      Entry('Section B0'),
      Entry('Section B1'),
    ],
  ),
  Entry(
    '개인정보 처리방침',
    <Entry>[
      Entry('Section B0'),
      Entry('Section B1'),
    ],
  ),
  Entry(
    '위치기반서비스 이용약관',
    <Entry>[
      Entry('Section C0'),
      Entry('Section C1'),
      Entry(
        'Section C2',
        <Entry>[
          Entry('Item C2.0'),
          Entry('Item C2.1'),
          Entry('Item C2.2'),
          Entry('Item C2.3'),
        ],
      ),
    ],
  ),
];

class AgreementsPage extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return new TallHeightAppBarContainer(
      text: S.of(ctx).title_agreements,
      icon: Icons.close,
      iconSize: 22.0,
      child: Container(
        padding: EdgeInsets.only(left: 42, right: 32),
        child: Container(
//          color: Colors.pinkAccent,
          margin: EdgeInsets.only(top: 0),
          child: ListView.builder(
              itemBuilder: (BuildContext ctx, int idx) => EntryItem(data[idx]),
              itemCount: data.length
          ),
        )
      )
    );
  }
}