import '../models/dokter.dart';
import '../repositories/profil_repository.dart';
import 'mock_json_source.dart';

class MockProfilRepository implements ProfilRepository {
  MockProfilRepository(this._source);

  final MockJsonSource _source;

  @override
  Future<Dokter> getDokter() async {
    final json = await _source.pasienIgd();
    return Dokter.fromJson(json['dokter'] as Map<String, dynamic>);
  }
}
