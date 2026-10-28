import '../models/notifikasi.dart';

/// Notifikasi untuk dokter. Hanya baca; status "sudah dibaca" disimpan lokal, bukan di sini.
abstract interface class NotifikasiRepository {
  /// Urut terbaru di atas.
  Future<List<Notifikasi>> getNotifikasi();
}
