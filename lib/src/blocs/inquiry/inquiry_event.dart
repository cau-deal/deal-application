import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class InquiryEvent extends Equatable {
  InquiryEvent([List props = const []]) : super(props);
}

class TitleChanged extends InquiryEvent {
  final String title;

  TitleChanged({@required this.title}) : super([title]);

  @override
  String toString() => 'TItleChanged : $title';
}

class ContentChanged extends InquiryEvent {
  final String contents;

  ContentChanged({@required this.contents}) : super([contents]);

  @override
  String toString() => 'ContentChanged { contents: $contents }';
}

class Submitted extends InquiryEvent {
  final String title;
  final String contents;

  Submitted({@required this.title, @required this.contents})
      : super([title, contents]);

  @override
  String toString() {
    return 'Submitted { title: $title, content: $contents }';
  }
}