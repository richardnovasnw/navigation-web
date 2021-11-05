import 'package:flutter/material.dart';
import 'package:navigation_web/newTab/new_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      initialRoute: MyHomePage.route,
      // onGenerateRoute: RouteConfiguration.onGenerateRoute,
      routes: {
        SecondPage.route: (context) => const SecondPage(),
        ThirdPage.route: (context) => const ThirdPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  static const String route = '/';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    //

    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SecondPage.route);
                },
                child: const Text('Second Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ThirdPage.route);
                },
                child: const Text('Third Page')),
            ElevatedButton(
              child: const Text('Open New Tab'),
              onPressed: () {
                NewTab().tab(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const String route = '/2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ThirdPage.route);
                },
                child: const Text('Third Page'))
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  static const String route = '/3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[const Text('Third Page')],
        ),
      ),
    );
  }
}

// class Path {
//   const Path(this.pattern, this.builder);

//   final String pattern;

//   final Widget Function(BuildContext, String) builder;
// }

// class RouteConfiguration {
//   static List<Path> paths = [
//     Path(
//       ThirdPage.route,
//       (context, match) => ThirdPage(),
//     ),
//     Path(
//       SecondPage.route,
//       (context, match) => SecondPage(),
//     ),
//     Path(
//       r'^' + MyHomePage.route,
//       (context, match) => MyHomePage(),
//     ),
//   ];

//   static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//     for (Path path in paths) {
//       final regExpPattern = RegExp(path.pattern);
//       if (regExpPattern.hasMatch(settings.name.toString())) {
//         final firstMatch = regExpPattern.firstMatch(settings.name.toString());
//         final match =
//             (firstMatch?.groupCount == 1) ? firstMatch?.group(1) : null;
//         return MaterialPageRoute<void>(
//           builder: (context) => path.builder(context, match.toString()),
//           settings: settings,
//         );
//       }
//     }

//     return MaterialPageRoute<void>(
//       builder: (context) => MyHomePage(),
//     );
//   }
// }
 