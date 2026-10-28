/// Data yang diminta tidak ada di sumber (mis. No. registrasi tidak dikenal).
class DataTidakDitemukan implements Exception {
  const DataTidakDitemukan(this.pesan);

  final String pesan;

  @override
  String toString() => 'DataTidakDitemukan: $pesan';
}
