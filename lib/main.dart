import 'package:facebook_ui/bloc/bloc_observer.dart';
import 'package:facebook_ui/bloc/user_bloc.dart';
import 'package:facebook_ui/bloc/user_bloc_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/facebook_feed_screen.dart';

void main() {
 // Bloc.observer = SimpleBlocObserver();
 // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: FaceBookFeedScreen(),
      ),
    );
  }
}

