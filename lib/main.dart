import 'package:assigment_1/src/core/styles/app_theme.dart';
import 'package:assigment_1/src/data/abstract_repository/repository.dart';
import 'package:assigment_1/src/data/viewmodel/first_screen_viewmodel.dart';
import 'package:assigment_1/src/data/viewmodel/second_screen_viewmodel.dart';
import 'package:assigment_1/src/data/viewmodel/third_screen_viewmodel.dart';
import 'package:assigment_1/src/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'locator.dart';

void main() {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
        (_) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create:  (context) => FirstScreenViewModel(),lazy: false),
          ChangeNotifierProvider(
            create: (_) => SecondScreenViewModel(),
          ),
          ChangeNotifierProvider(
            create: (_) => ThirdScreenViewModel(repository: locator<Repository>()),
          ),
        ],
        child: MaterialApp(
          title: 'SuitMedia Assigment',
          theme: AppTheme.lightTheme(context),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          initialRoute: '/',
          onGenerateRoute: RouteGenerator.generateRoute,

        ),
    );
  }
}



