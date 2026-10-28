import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/rekam_pasien.dart';
import '../repositories/repository_exception.dart';

/// Membaca data fiktif dari `assets/mock/*.json`. Hasil di-cache di memori.
class MockJsonSource {
  MockJsonSource(this._bundle);

  final AssetBundle _bundle;
  final _cache = <String, Map<String, dynamic>>{};

  static const pasienIgdAsset = 'assets/mock/pasien_igd.json';

  /// No. registrasi → file rekam. Pasien lain di daftar belum punya rekam fiktif.
  static const rekamAssets = {'EMR/20261028/00002': 'assets/mock/rekam_hendra_kusuma.json'};

  Future<Map<String, dynamic>> load(String asset) async {
    final cached = _cache[asset];
    if (cached != null) return cached;
    final json = jsonDecode(await _bundle.loadString(asset)) as Map<String, dynamic>;
    return _cache[asset] = json;
  }

  Future<Map<String, dynamic>> pasienIgd() => load(pasienIgdAsset);

  Future<RekamPasien> rekam(String noReg) async {
    final asset = rekamAssets[noReg];
    if (asset == null) throw DataTidakDitemukan('Rekam pasien $noReg tidak ada di data contoh.');
    return RekamPasien.fromJson(await load(asset));
  }

  /// Dipanggil saat logout.
  void clearCache() => _cache.clear();
}
