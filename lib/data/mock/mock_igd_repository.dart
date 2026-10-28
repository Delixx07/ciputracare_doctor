import '../models/cppt.dart';
import '../models/disposisi.dart';
import '../models/header_pasien.dart';
import '../models/kajian_awal.dart';
import '../models/pasien_igd.dart';
import '../repositories/igd_repository.dart';
import 'mock_json_source.dart';

class MockIgdRepository implements IgdRepository {
  MockIgdRepository(this._source);

  final MockJsonSource _source;

  @override
  Future<List<PasienIgd>> getDaftarPasien() async {
    final json = await _source.pasienIgd();
    return (json['pasien'] as List<dynamic>).map((e) => PasienIgd.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<String?> getSerahTerima() async {
    final json = await _source.pasienIgd();
    return json['serahTerima'] as String?;
  }

  @override
  Future<HeaderPasien> getHeader(String noReg) async => (await _source.rekam(noReg)).header;

  @override
  Future<KajianAwal> getKajianAwal(String noReg) async => (await _source.rekam(noReg)).kajianAwal;

  @override
  Future<List<Cppt>> getCppt(String noReg) async => (await _source.rekam(noReg)).cppt;

  @override
  Future<Disposisi> getDisposisi(String noReg) async => (await _source.rekam(noReg)).disposisi;
}
