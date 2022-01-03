import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PersonWidget(),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoriteCount = 777;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('777'),
    );
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Звёздные войны'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: _bildRating(),
                  ),
                  Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(5),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Text('Кнопочки'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Text('Описание'),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Widget _buildTopImage() => Container(
        child: Card(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          elevation: 5,
          child: Image.asset(
            'assets/images/1.jpg',
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _bildRating() => ListTile(
        title: Text(
          'Дарт Вейдер',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text('Применение телекинеза.'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[FavoriteWidget()],
        ),
      );
}
