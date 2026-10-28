import '../models/beranda.dart';

/// Ringkasan Beranda. Hanya baca (GET).
abstract interface class BerandaRepository {
  Future<RingkasanBeranda> getRingkasan();
}
