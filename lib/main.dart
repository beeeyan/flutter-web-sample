import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter_web_sample/util/fade_transition_builder.dart';
import 'package:flutter_web_sample/util/route_generator.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.sawarabiGothicTextTheme(
            Theme.of(context).textTheme
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
                TargetPlatform.android: FadePageTransitionsBuilder(),
                TargetPlatform.iOS: FadePageTransitionsBuilder(),
                TargetPlatform.linux: FadePageTransitionsBuilder(),
                TargetPlatform.macOS: FadePageTransitionsBuilder(),
                TargetPlatform.windows: FadePageTransitionsBuilder(),
              }),
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}