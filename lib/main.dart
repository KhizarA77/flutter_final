import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_final/api/fetch_juices.dart';
import 'package:firebase_final/bloc/juice_bloc.dart';
import 'package:firebase_final/bloc/juice_event.dart';
import 'package:firebase_final/models/models.dart';
import 'package:firebase_final/view/home/juice_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_final/firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: const AppBarTheme(),
        useMaterial3: false,
        ),
        home: BlocProvider(
          create: (context) => JuiceBloc(fetchservice: fetchService())..add(const fetchJuice()),
          child: JuiceScreen(),
        ),
    );
  }
}