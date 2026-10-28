import 'package:intl/intl.dart';

/// Format tanggal/jam Indonesia. Locale `id_ID` diinisialisasi di `main`.

/// "28 Okt 2026 · 07:13"
String formatTanggalJam(DateTime t) => '${DateFormat('d MMM y', 'id_ID').format(t)} · ${DateFormat('HH:mm').format(t)}';

/// "Rabu, 28 Okt"
String formatHariTanggal(DateTime t) => DateFormat('EEEE, d MMM', 'id_ID').format(t);

/// "07:13"
String formatJam(DateTime t) => DateFormat('HH:mm').format(t);
