import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'state/TopChangeNotifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //中略
    return MaterialApp(
      home: Scaffold(
        body: Consumer(builder: (context, read,_) {
          return Center(
            child: SafeArea(
              child: Column(
              children: [
                Text("${read(topProvider).count}"),
                FloatingActionButton(
                  onPressed: () => context.read(topProvider).increment()
                )
              ]
            )
          ));
        }
      )
    )
  );
  }
}
