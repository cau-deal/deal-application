import 'package:meta/meta.dart';

@immutable
class MyPageState {

  final bool isPointSection;
  final bool isMissionSection;
  final bool isMessageSection;

  MyPageState({
    @required this.isPointSection,
    @required this.isMissionSection,
    @required this.isMessageSection,
  });

  factory MyPageState.mission() {
    return MyPageState(
      isPointSection: false,
      isMissionSection: true,
      isMessageSection: false,
    );
  }

  factory MyPageState.point() {
    return MyPageState(
      isPointSection: true,
      isMissionSection: false,
      isMessageSection: false,
    );
  }

  factory MyPageState.message() {
    return MyPageState(
      isPointSection: false,
      isMissionSection: false,
      isMessageSection: true,
    );
  }

  MyPageState update({
    bool isPointSection,
    bool isMissionSection,
    bool isMessageSection,
    List<String> items
  }) {
    return MyPageState(
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