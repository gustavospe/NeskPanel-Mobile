import 'package:supabase_flutter/supabase_flutter.dart';

class Constants {
  // Replace with your Supabase URL and anon key
  static const String supabaseUrl = 'https://dpmprspbcycelsjqvpmc.supabase.co';
  static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwbXByc3BiY3ljZWxzanF2cG1jIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0ODU3MjY5MiwiZXhwIjoyMDY0MTQ4NjkyfQ.bM4B0QEVR0Ou8OgDDTEMh5_fQC_rorH1C3Us55mAFkk';
}

// Supabase client instance for easy access throughout the app
final supabase = Supabase.instance.client;
