import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class MainScreenState {
  List<MissionRecommendImage> fetchedList;
  final bool isSuccess;
  final bool isFailure;
  final bool isLoading;

  MainScreenState({
    @required this.fetchedList,
    @required this.isFailure,
    @required this.isSuccess,
    @required this.isLoading,
  });

  factory MainScreenState.empty(){
    return MainScreenState(
      isFailure: false,
      isSuccess: false,
      isLoading: false,
    );
  }

  factory MainScreenState.loading(){
    return MainScreenState(
      isFailure: false,
      isSuccess: false,
      isLoading: true,
    );
  }

  factory MainScreenState.failure(){
    return MainScreenState(
      isFailure: true,
      isSuccess: false,
      isLoading: false,
    );
  }

  factory MainScreenState.success(){
    return MainScreenState(
      isSuccess: true,
      isFailure: false,
      isLoading: false,
    );
  }

  MainScreenState update({
    List<MissionRecommendImage> fetchedList,
    bool isSuccess,
    bool isFailure,
    bool isLoading,
  }) {
    return copyWith(
      fetchedList: fetchedList,
      isSuccess: isSuccess,
      isFailure: isFailure,
      isLoading: isLoading,
    );
  }

  MainScreenState copyWith({
    bool isSuccess,
    bool isFailure,
    bool isLoading,
    List<MissionRecommendImage> fetchedList,
  }) {
    return MainScreenState(
      fetchedList: fetchedList ?? this.fetchedList,
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isLoading ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return '''MainScreenstate {
      isLoading: $isLoading,
      isSucceess: $isSuccess,
      isFailure: $isFailure,
    }''';
  }

  @override
  List<Object> get props => [fetchedList];

}
