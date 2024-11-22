import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'book_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ulzimctrcrfuahgmcjkj.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVsemltY3RyY3JmdWFoZ21jamtqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE3MjY2MjAsImV4cCI6MjA0NzMwMjYyMH0.hMPSzE71DB-jvTLc1j7plAirCgq4sHK48Ma-V2UoBiE',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Digital Library",
      home: BookListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
