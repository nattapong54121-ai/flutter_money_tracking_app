import 'package:flutter/material.dart';
import 'package:flutter_log_app/Views/Splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://xkwyuqpedjolrhjjgiav.supabase.co/",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inhrd3l1cXBlZGpvbHJoampnaWF2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM3ODczNTYsImV4cCI6MjA4OTM2MzM1Nn0.3gD0tLNAjTL0hkPfS71onWq2EifHgS5Ak-XDPHcS_w8",
  );

  await initializeDateFormatting('th', null);

  runApp(MoneyTrack());
}

class MoneyTrack extends StatefulWidget {
  const MoneyTrack({super.key});

  @override
  State<MoneyTrack> createState() => _MoneyTrackState();
}

class _MoneyTrackState extends State<MoneyTrack> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
