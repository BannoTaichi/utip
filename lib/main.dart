import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(context.widget); //出力：MyApp
    return MaterialApp(
      title: 'UTip App',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 4, 255)),
        useMaterial3: true,
      ),
      home: const UTip(),
    );
  }
}

class UTip extends StatefulWidget {
  const UTip({super.key});

  @override
  State<UTip> createState() => _UTipState();
}

class _UTipState extends State<UTip> {
  @override
  Widget build(BuildContext context) {
    print(context.widget); //出力：UTip
    var theme =
        Theme.of(context); //テーマが添付されている最も近いウィジェットのテーマを取得して、それを変数themeに格納して使用
    return Scaffold(
        appBar: AppBar(
          title: const Text('UTip'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                  // Theme基準で色使用
                  color: theme.colorScheme.inversePrimary,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  Text("Total per person",
                      //Theme基準から文字サイズ使用
                      style: theme.textTheme.titleMedium),
                  Text("\$price 円", style: theme.textTheme.displaySmall)
                ],
              ),
            )
          ],
        ));
  }
}
