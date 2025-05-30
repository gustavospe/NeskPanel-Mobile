import 'package:supabase_flutter/supabase_flutter.dart';

class Constants {
  // Replace with your Supabase URL and anon key
  static const String supabaseUrl = 'https://dpmprspbcycelsjqvpmc.supabase.co';
  static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwbXByc3BiY3ljZWxzanF2cG1jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDg1NzI2OTIsImV4cCI6MjA2NDE0ODY5Mn0.bgedJ1zg6ulhHNJ_YPuRboMq6R13I7CeW66ebdtePbI';
}

// Supabase client instance for easy access throughout the app
final supabase = Supabase.instance.client;
