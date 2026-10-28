import '../models/dokter.dart';
import '../repositories/auth_repository.dart';
import 'mock_json_source.dart';

/// Menerima kode dokter dari data contoh (D0412) dengan kata sandi apa pun yang tidak kosong.
class MockAuthRepository implements AuthRepository {
  MockAuthRepository(this._source);

  final MockJsonSource _source;

  @override
  Future<Sesi> masuk(String kodeAtauEmail, String sandi) async {
    final json = await _source.pasienIgd();
    final dokter = Dokter.fromJson(json['dokter'] as Map<String, dynamic>);
    if (kodeAtauEmail.trim().toUpperCase() != dokter.kode || sandi.isEmpty) {
      throw const LoginGagal('Kode dokter atau kata sandi salah.');
    }
    return Sesi(token: 'mock-token-${dokter.kode}', dokter: dokter);
  }
}
