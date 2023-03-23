import '../utils/barrel_export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360,690),
      builder: (BuildContext context, Widget? child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          // theme: ThemeData(
          //   colorScheme: ColorScheme.fromSwatch().copyWith(
          //     primary: primary,
          //   )
          // ),
          home: BottomBar(),
        );
      },
    );
  }
}

