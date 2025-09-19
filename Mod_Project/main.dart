import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appName = 'THEMES';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        // Changed FloatingActionButton color from red → blue
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
        ),

        // Changed AppBar foreground from white → black
        appBarTheme: const AppBarTheme(foregroundColor: Colors.black),

        // Changed brightness: light → dark
        brightness: Brightness.dark,

        // Changed primary color from green → purple
        primaryColor: Colors.purple,

        // Updated color scheme with a new seed
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          secondary: Colors.amber, // changed from deepOrangeAccent → amber
          brightness: Brightness.dark,
        ),

        // Changed font family from Georgia → Arial
        fontFamily: 'Arial',

        // Updated text styles
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 64.0, // reduced from 72
            fontWeight: FontWeight.w600, // slightly lighter
          ),
          titleLarge: TextStyle(
            fontSize: 28.0, // reduced from 36
            fontStyle: FontStyle.normal, // removed italic
          ),
          bodyMedium: TextStyle(
            fontSize: 16.0, // increased from 14
            fontFamily: 'Roboto', // changed from Hind
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: appName),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12), // Added rounded corners
          ),
          child: Text(
            'THEME MOD',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.black, // added text color for contrast
                ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("LIKED!")),
          );
        },
        child: const Icon(Icons.thumb_up), // changed from arrow_circle_up
      ),
    );
  }
}
