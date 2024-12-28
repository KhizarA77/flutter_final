import 'package:equatable/equatable.dart';

sealed class JuiceEvent extends Equatable {
  const JuiceEvent();

  @override
  List<Object> get props => [];
}

final class fetchJuice extends JuiceEvent {
  const fetchJuice();

  @override
  List<Object> get props => [];
}