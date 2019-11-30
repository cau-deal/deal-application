import 'package:meta/meta.dart';

@immutable
class MyPageState {

  final int point;
  final int numOfMissions;
  final int numOfMessages;

  final bool isPointSection;
  final bool isMissionSection;
  final bool isMessageSection;

  MyPageState({
    @required this.point,
    @required this.numOfMissions,
    @required this.numOfMessages,

    @required this.isPointSection,
    @required this.isMissionSection,
    @required this.isMessageSection,
  });

  factory MyPageState.empty() {
    return MyPageState(
      point: 0,
      numOfMissions: 0,
      numOfMessages: 0,
      isPointSection: false,
      isMissionSection: true,
      isMessageSection: false,
    );
  }

  factory MyPageState.mission(int point, int mission, int message) {
    return MyPageState(
      point: point,
      numOfMissions: mission,
      numOfMessages: message,
      isPointSection: false,
      isMissionSection: true,
      isMessageSection: false,
    );
  }

  factory MyPageState.point(int point, int mission, int message) {
    return MyPageState(
      point: point,
      numOfMissions: mission,
      numOfMessages: message,
      isPointSection: true,
      isMissionSection: false,
      isMessageSection: false,
    );
  }
  // Message Section
  factory MyPageState.message(int point, int mission, int message) {
    return MyPageState(
      point: point,
      numOfMissions: mission,
      numOfMessages: message,
      isPointSection: false,
      isMissionSection: false,
      isMessageSection: true,
    );
  }

  MyPageState update({
    bool isPointSection, bool isMissionSection, bool isMessageSection, List<String> items,
    int point, int mission, int message
  }) {
    return MyPageState(
      point: point ?? this.point,
      numOfMissions: mission ?? this.numOfMissions,
      numOfMessages: message ?? this.numOfMessages,
      isPointSection: isPointSection ?? this.isPointSection,
      isMissionSection: isMissionSection ?? this.isMissionSection,
      isMessageSection: isMessageSection ?? this.isMessageSection,
    );
  }

  @override
  String toString() {
    return '''State {
      
    }''';
  }
}
