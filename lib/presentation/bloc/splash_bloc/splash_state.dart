part of 'splash_bloc.dart';

class SplashState extends Equatable {
  final SplashStatus status;
  final bool showOnBoarding;
  final bool isUserLoggedIn;

  const SplashState({
    this.status = SplashStatus.init,
    this.showOnBoarding = true,
    this.isUserLoggedIn = true,
  });

  SplashState copyWith({
    SplashStatus? status,
    bool? showOnBoarding,
    bool? isUserLoggedIn,
  }) {
    return SplashState(
      status: status ?? this.status,
      showOnBoarding: showOnBoarding ?? this.showOnBoarding,
      isUserLoggedIn: isUserLoggedIn ?? this.isUserLoggedIn,
    );
  }

  @override
  List<Object?> get props => [
    status,
    showOnBoarding,
    isUserLoggedIn,
  ];
}
