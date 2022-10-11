import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter_web_sample/util/fade_transition_builder.dart';
import 'package:flutter_web_sample/util/responsive_notifier.dart';
import 'package:flutter_web_sample/util/route_generator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final responsiveNotifier = ref.read(responsiveProvider.notifier);
    //   // レスポンシブの横幅の境界値を設定
    //   ..setResposiveWidth(
    //     // 2022年10月 iPhone縦向き・横幅の最大のpoint + 10（iPhone 14 Pro Max : 430）
    //     mediumBegin: 440,
    //     // 2022年10月 iPad縦向き・横幅 + 10（iPad Pro 11 3rdなど : 834）
    //     // ※1000point超えているものはlargeの区分とした。
    //     mediumEnd: 844,
    //   );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:
            GoogleFonts.sawarabiGothicTextTheme(Theme.of(context).textTheme),
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
      builder: (context, child) {
        responsiveNotifier.updateSize(MediaQuery.of(context).size);
        return child!;
      },
    );
  }
}
