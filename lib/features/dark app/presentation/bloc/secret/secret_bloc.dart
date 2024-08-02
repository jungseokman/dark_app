import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'secret_event.dart';
part 'secret_state.dart';

class SecretBloc extends Bloc<SecretEvent, SecretState> {
  SecretBloc() : super(const SecretInitial()) {
    on<ChangeSecretEvent>((event, emit) {
      emit(state.copyWith(isSecret: event.isSecret));
    });
  }
}
