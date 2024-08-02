part of 'secret_bloc.dart';

class SecretState extends Equatable {
  const SecretState({
    required this.isSecret,
  });

  final bool isSecret;

  @override
  List<Object> get props => [isSecret];

  SecretState copyWith({
    bool? isSecret,
  }) {
    return SecretState(
      isSecret: isSecret ?? this.isSecret,
    );
  }

  @override
  String toString() => 'SecretState(isSecret: $isSecret)';
}

final class SecretInitial extends SecretState {
  const SecretInitial() : super(isSecret: false);
}
