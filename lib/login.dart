import 'package:flutter/material.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("lagi login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'username'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: const Text('Login'),
            ),
          ],
        )
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("sudah di home"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/cat.jpg'),
            Image.asset('assets/dog.jpg'),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyCheckoutPage()));
              },
              child: const Text('Pesan item'),
            ),]
        )
      )
    );
  }
}

class MyCheckoutPage extends StatelessWidget {
  const MyCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("sudah di checkout"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'No HP'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Alamat'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Checkout'),
            ),
          ],
        )
      )
    );
  }
}
