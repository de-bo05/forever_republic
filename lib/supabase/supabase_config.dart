import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static final SupabaseConfig instance = SupabaseConfig.internal();

  factory SupabaseConfig() => instance;

  SupabaseConfig.internal();

  static const url = "";
  static const apiKey = "";
  static final initialize = Supabase.initialize(url: url, anonKey: apiKey);

  static final client = Supabase.instance.client;
  static final authentication = SupabaseAuth.instance;


}
