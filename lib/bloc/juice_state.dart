import 'package:equatable/equatable.dart';
import 'package:firebase_final/models/models.dart';


sealed class JuiceState extends Equatable {
  const JuiceState();

  @override
  List<Object> get props => [];
}

final class JuiceInitial extends JuiceState {}
final class JuiceLoading extends JuiceState {}

final class JuiceLoaded extends JuiceState {
  final Juice juice;
  const JuiceLoaded(this.juice);


  @override
  List<Object> get props => [juice];
}

final class JuiceError extends JuiceState {
  const JuiceError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
