part of 'splash_bloc.dart';

class SplashState extends Equatable {
  SplashStatus status = SplashStatus.init;
  int refresh = 0;

  SplashState({
    this.status = SplashStatus.init,
    this.refresh = 0,
  });

  SplashState copyWith({
    SplashStatus? status,
    int? refresh,
  }) {
    return SplashState(
      status: status ?? this.status,
      refresh: refresh ?? this.refresh,
    );
  }

  @override
  List<Object?> get props => [
        status,
        refresh,
      ];
}
