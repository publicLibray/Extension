import 'package:flutter/material.dart';
import 'package:toButton/toButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1'),
      ),
      body: Column(
        children: [
          Text('Goto Next Screen').push(
            context,
            destination: Screen2(),
          ),
          //Before
          GestureDetector(
            onTap: () => print('Hello'),
            child: Text('Click me'),
          ),
          //Afterte
          Text('Click me').onTapGesture(() => print('Hello')),
          //Before
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Look at my padding'),
          ),
          //After
          Text('Look at my padding')
              .toPadding(options: Options.Top, size: 10.0),
          Text('012859090'.isKhNumber().toString()),
          Image.network(
            'https://www.whitehouse.gov/wp-content/uploads/2017/11/President-Trump-Official-Portrait-1024x1297.jpg',
          ).cornerRadius(circular: 10.0),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: [
              SizedBox(
                child: Text('data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
