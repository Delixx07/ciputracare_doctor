import '../models/lab.dart';
import '../repositories/lab_repository.dart';
import 'mock_json_source.dart';

class MockLabRepository implements LabRepository {
  MockLabRepository(this._source);

  final MockJsonSource _source;

  @override
  Future<List<LabMasuk>> getLabMasuk() async {
    final json = await _source.pasienIgd();
    final list = (json['labMasuk'] as List<dynamic>? ?? const [])
        .map((e) => LabMasuk.fromJson(e as Map<String, dynamic>))
        .toList();
    return list..sort((a, b) => b.jam.compareTo(a.jam));
  }

  @override
  Future<LabPasien> getLabPasien(String noReg) async => (await _source.rekam(noReg)).lab;

  @override
  Future<TrenLab?> getTren(String noReg, String item) async {
    final tren = (await _source.rekam(noReg)).lab.tren;
    return tren?.item == item ? tren : null;
  }
}
