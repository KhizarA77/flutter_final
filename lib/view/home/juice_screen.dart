import 'package:firebase_final/view/home/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_final/bloc/bloc.dart';
import 'package:firebase_final/view/home/loader.dart';
import 'package:firebase_final/view/home/screen.dart';

class JuiceScreen extends StatelessWidget {
   Widget build(BuildContext context) {
    return BlocBuilder<JuiceBloc, JuiceState>(
      builder: (context, state) {
        if (state is JuiceLoading) {
          return const CustomLoader();
        } else if (state is JuiceLoaded) {
          return Screen(juice: state.juice);
        } else if (state is JuiceError) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const CustomLoader();
        }
      },
    );
  }
}