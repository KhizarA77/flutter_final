import 'package:bloc/bloc.dart';
import 'package:firebase_final/api/fetch_juices.dart';
import 'package:firebase_final/bloc/juice_event.dart';
import 'package:firebase_final/bloc/juice_state.dart';

class JuiceBloc extends Bloc<JuiceEvent, JuiceState> {
  JuiceBloc({required this.fetchservice}) : super(JuiceInitial()) {
    on<fetchJuice>(_fetchJuices);
  }

  fetchService fetchservice;

  Future<void> _fetchJuices(fetchJuice event, Emitter<JuiceState> emit) async {
    try {
      final _juice = await fetchservice.fetchJuices();
      emit(JuiceLoaded(_juice));
    } on DataNotFoundException {
      emit(JuiceError('Data not found'));
    }
    on Exception {
      emit(JuiceError('An error occurred'));
    }
  }
}