import 'package:darkmode/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final provider = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          Switch.adaptive(
            activeColor: Colors.green,
            inactiveTrackColor: Colors.grey,
            value: themeProvider.isDarkMode,
            onChanged: (value) {
              provider.toggleTheme(value);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Selamat Datang',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
