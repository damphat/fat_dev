import 'package:fat_dev/fat_dev.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

// Home page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: FatDev(
          {
            'actions': {
              'signIn': () => print('signIn'),
              'signOut': () => print('signOut'),
            },
            'profile': {
              'name': 'Dam Ngoc Phat',
              'middle': null,
              'male': true,
              'age': 100,
            },
            'friends': [
              {'id': 1, 'name': 'An'},
              {'id': 2, 'name': 'Bao'},
              {'id': 3, 'name': 'Nguyen Cuong'},
            ],
            'specials': {
              'stream': Stream.fromIterable([1, 2, 3]),
              'future': Future.value(1),
              'futureStream': Future.value(Stream.fromIterable([1, 2, 3])),
              'funFutureStream': () => Future.value(
                    Stream.fromIterable([
                      [1, 2],
                      [3, 4],
                    ]),
                  ),
            }
          },
        ),
      ),
    );
  }
}
