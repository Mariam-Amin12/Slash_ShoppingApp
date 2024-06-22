
import 'package:flutter/material.dart';
import 'package:shopping/app.dart';


void main() {

  runApp( Main());
}

class Main extends StatelessWidget {
  // final AppRouter appRouter;
  const Main({
    super.key,
    // required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: appRouter.generateRoute,
      home: App()
    );
  }
}



