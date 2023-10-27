import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:professional_reset_api/index.dart';

import 'controller/use_controller/ok/view.dart';

void main() async {
  await initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:const OkPage(),
      ),
     /*  child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocProvider(
          create: (context) => sl<UserCubit>(),
          child: const HomePage(),
        ),
      ), */
    );
  }
}
