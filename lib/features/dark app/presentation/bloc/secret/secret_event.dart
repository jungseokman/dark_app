part of 'secret_bloc.dart';

sealed class SecretEvent extends Equatable {
  const SecretEvent();

  @override
  List<Object> get props => [];
}

class ChangeSecretEvent extends SecretEvent {
  const ChangeSecretEvent({
    required this.isSecret,
  });

  final bool isSecret;

  @override
  List<Object> get props => [isSecret];
}
