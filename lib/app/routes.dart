/// Alamat rute aplikasi.
abstract final class Routes {
  static const login = '/login';
  static const pin = '/pin';
  static const pinBuat = '/pin/buat';
  static const beranda = '/beranda';
  static const igd = '/igd';
  static const lab = '/lab';
  static const profil = '/profil';
  static const notifikasi = '/notifikasi';
  static const devWidgets = '/dev/widgets';

  /// Satu bagian kajian awal, [bagian] 1–6.
  static String kajian(String noReg, int bagian) => '/pasien/${Uri.encodeComponent(noReg)}/kajian/$bagian';

  /// Detail satu order lab (No. transaksi juga berisi "/").
  static String labOrder(String noReg, String noTrx) =>
      '/pasien/${Uri.encodeComponent(noReg)}/lab/order/${Uri.encodeComponent(noTrx)}';

  /// Semua nilai lab hari ini.
  static String labHariIni(String noReg) => '/pasien/${Uri.encodeComponent(noReg)}/lab/hari-ini';

  /// Tren satu parameter lab.
  static String labTren(String noReg, String item) =>
      '/pasien/${Uri.encodeComponent(noReg)}/lab/tren?item=${Uri.encodeQueryComponent(item)}';

  /// No. registrasi berisi "/", jadi di-encode.
  static String pasien(String noReg, {PasienTab? tab}) =>
      '/pasien/${Uri.encodeComponent(noReg)}${tab == null ? '' : '?tab=${tab.key}'}';
}

/// Tab halaman pasien.
enum PasienTab {
  kajian('kajian', 'Kajian awal'),
  catatan('catatan', 'Catatan'),
  lab('lab', 'Hasil lab'),
  disposisi('disposisi', 'Disposisi');

  const PasienTab(this.key, this.label);

  final String key;
  final String label;

  static PasienTab fromKey(String? key) => values.firstWhere((t) => t.key == key, orElse: () => kajian);
}
