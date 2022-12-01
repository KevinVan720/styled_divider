import 'package:flutter/material.dart';
import 'package:styled_divider/styled_divider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const StyledDivider(
              color: Colors.blue,
              height: 50,
              thickness: 0,
              lineStyle: DividerLineStyle.solid,
              indent: 10,
              endIndent: 10,
            ),
            const StyledDivider(
              color: Colors.green,
              height: 50,
              thickness: 2,
              lineStyle: DividerLineStyle.dotted,
              indent: 20,
              endIndent: 20,
            ),
            const StyledDivider(
              color: Colors.red,
              height: 50,
              thickness: 4,
              lineStyle: DividerLineStyle.dashed,
              indent: 30,
              endIndent: 30,
            ),
            const StyledDivider(
              color: Colors.black,
              height: 50,
              thickness: 8,
              lineStyle: DividerLineStyle.dashdotted,
              indent: 40,
              endIndent: 40,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                const StyledVerticalDivider(
                  color: Colors.blue,
                  width: 50,
                  thickness: 0,
                  lineStyle: DividerLineStyle.solid,
                  indent: 10,
                  endIndent: 10,
                ),
                const StyledVerticalDivider(
                  color: Colors.green,
                  width: 50,
                  thickness: 2,
                  lineStyle: DividerLineStyle.dotted,
                  indent: 20,
                  endIndent: 20,
                ),
                const StyledVerticalDivider(
                  color: Colors.red,
                  width: 50,
                  thickness: 4,
                  lineStyle: DividerLineStyle.dashed,
                  indent: 30,
                  endIndent: 30,
                ),
                const StyledVerticalDivider(
                  color: Colors.black,
                  width: 50,
                  thickness: 8,
                  lineStyle: DividerLineStyle.dashdotted,
                  indent: 40,
                  endIndent: 40,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
