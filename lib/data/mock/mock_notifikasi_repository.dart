import '../models/notifikasi.dart';
import '../repositories/notifikasi_repository.dart';
import 'mock_json_source.dart';

class MockNotifikasiRepository implements NotifikasiRepository {
  MockNotifikasiRepository(this._source);

  final MockJsonSource _source;

  @override
  Future<List<Notifikasi>> getNotifikasi() async {
    final json = await _source.pasienIgd();
    return (json['notifikasi'] as List<dynamic>).map((e) => Notifikasi.fromJson(e as Map<String, dynamic>)).toList();
  }
}
