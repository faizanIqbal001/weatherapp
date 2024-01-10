part of 'splash_bloc.dart';

class SplashState extends Equatable {
  final SplashStatus status;
  const SplashState({
    this.status = SplashStatus.init,
  });

  SplashState copyWith({
    SplashStatus? status,
  }) {
    return SplashState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
    status,
  ];
}
