import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch/bloc/stop_watch_bloc.dart';
import 'package:stop_watch/route/stop_watch_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StopWatchBloc>(
          create: (context) => StopWatchBloc(),
        ),
      ],
      child: MaterialApp(
        home: StopWatchMain(),
      ),
    );
  }
}
