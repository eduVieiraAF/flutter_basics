import 'package:flutter/material.dart';
import 'package:flutter_basics/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter basics'),
      ),

      body: const HomePage(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Floating action button");
        },
        
        child: const Icon(Icons.lens_blur_outlined),
      ),
      
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorite'),
          NavigationDestination(icon: Icon(Icons.list_outlined), label: 'List')
        ],
        
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        
        selectedIndex: currentPage,
      ),
    );
  }
}
