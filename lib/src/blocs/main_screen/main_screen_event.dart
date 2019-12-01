import 'package:equatable/equatable.dart';

abstract class MainScreenEvent extends Equatable {
  MainScreenEvent([List props = const []]) : super(props);
}

class FetchMainScreen extends MainScreenEvent {}

