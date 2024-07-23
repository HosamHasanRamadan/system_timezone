import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:system_timezone/system_timezone.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? timezone;
  String? timezones;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SystemTimezone Example')),
      body: Center(
        child: SelectionArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (timezone == null)
                  const SizedBox.shrink()
                else
                  Text(
                    'Platform Name: $timezone',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                if (timezones == null)
                  const SizedBox.shrink()
                else
                  Text(
                    'Platform Name: $timezones',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    if (!context.mounted) return;
                    try {
                      final tz = getTimezoneName();
                       final tzs = getSupportedTimezones();
                
                      setState(() => timezones = tzs.toString());
                
                      setState(() => timezone = tz.toString());
                    } catch (error,s) {
                      log('Hello',error: error,stackTrace:s);
                      if (!context.mounted) return;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Theme.of(context).primaryColor,
                          content: Text('$error'),
                        ),
                      );
                    }
                  },
                  child: const Text('Get Platform Name'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
