import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/pages/first_page.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/starter_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //   providers: [
        //     BlocProvider(
        //       create: (context) => MapBloc()..add(FetchMap()),
        //     ),
        //     BlocProvider(
        //       create: (context) => UserBloc(),
        //     ),
        //   ],
        //   child:
        AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        initialRoute: '/mapScreen',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        routes: {
          '/login': (context) => const StarterPage(),
          '/mapScreen': (context) => const QRViewExample(),
          '/principal': (context) => const HomePage(),
        },
      ),
    );
  }
}
