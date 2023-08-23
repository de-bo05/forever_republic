import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static final SupabaseConfig instance = SupabaseConfig.internal();

  factory SupabaseConfig() => instance;

  SupabaseConfig.internal();

  static const url = "https://udjjccbvkfvjqwqpiwog.supabase.co";
  static const apiKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVkampjY2J2a2Z2anF3cXBpd29nIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTI3NDE1OTQsImV4cCI6MjAwODMxNzU5NH0.Yc23NVV9qv910nQfkdJYPLspVs94d6PVbHXt_RmcU-0";
  static final initialize = Supabase.initialize(url: url, anonKey: apiKey);

  static final client = Supabase.instance.client;
  static final authentication = SupabaseAuth.instance;


}
