import 'package:supabase_flutter/supabase_flutter.dart';

class Constants {
  // Replace with your Supabase URL and anon key
  static const String supabaseUrl = 'https://ygiahlvnhbiwnzhktkmp.supabase.co';
  static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlnaWFobHZuaGJpd256aGt0a21wIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0Nzc5MzYzMiwiZXhwIjoyMDYzMzY5NjMyfQ.8WcWBAOvjMBT7QCkq4sDBgVFkkDv35KXFgxa3Yb3b2k';
}

// Supabase client instance for easy access throughout the app
final supabase = Supabase.instance.client;
