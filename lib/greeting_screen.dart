import 'package:flutter/material.dart';

class GreetingScreen extends StatefulWidget {
  @override
  _GreetingScreenState createState() => _GreetingScreenState();
}

class _GreetingScreenState extends State<GreetingScreen> {
  TextEditingController _nameController = TextEditingController();

  void _submitName() {
    String name = _nameController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GreetingScreenResult(name: name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Enter your name',
              ),
            ),
            SizedBox(height: 16.0),
            FlatButton(
              child: Text('Submit'),
              onPressed: _submitName,
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class GreetingScreenResult extends StatelessWidget {
  final String name;

  const GreetingScreenResult({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting Screen Result'),
      ),
      body: Center(
        child: Text('Hello, $name!'),
      ),
    );
  }
}
