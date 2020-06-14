import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider/main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DemoDemo1',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('provider_test'),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.appmessage,
                      style: TextStyle(fontSize: 30),
                    ),
                    RaisedButton(
                      child: Text('button'),
                      onPressed: () {
                        model.changeAppMessage();
                      },
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}