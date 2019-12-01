import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class MainScreenEvent extends Equatable {
  MainScreenEvent([List props = const []]) : super(props);
}