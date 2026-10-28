import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'local/biometrik_service.dart';
import 'local/key_value_store.dart';
import 'local/layar_aman.dart';
import 'mock/mock_auth_repository.dart';
import 'mock/mock_beranda_repository.dart';
import 'mock/mock_igd_repository.dart';
import 'mock/mock_json_source.dart';
import 'mock/mock_lab_repository.dart';
import 'mock/mock_notifikasi_repository.dart';
import 'mock/mock_profil_repository.dart';
import 'models/models.dart';
import 'repositories/auth_repository.dart';
import 'repositories/beranda_repository.dart';
import 'repositories/igd_repository.dart';
import 'repositories/lab_repository.dart';
import 'repositories/notifikasi_repository.dart';
import 'repositories/profil_repository.dart';

// Repository. Sekarang Mock*; nanti diganti Api* lewat --dart-define=USE_MOCK=false.

final assetBundleProvider = Provider<AssetBundle>((ref) => rootBundle);

final mockJsonSourceProvider = Provider<MockJsonSource>((ref) => MockJsonSource(ref.watch(assetBundleProvider)));

final authRepositoryProvider = Provider<AuthRepository>((ref) => MockAuthRepository(ref.watch(mockJsonSourceProvider)));

final profilRepositoryProvider = Provider<ProfilRepository>(
  (ref) => MockProfilRepository(ref.watch(mockJsonSourceProvider)),
);

final igdRepositoryProvider = Provider<IgdRepository>((ref) => MockIgdRepository(ref.watch(mockJsonSourceProvider)));

final berandaRepositoryProvider = Provider<BerandaRepository>(
  (ref) => MockBerandaRepository(ref.watch(mockJsonSourceProvider), ref.watch(igdRepositoryProvider)),
);

final labRepositoryProvider = Provider<LabRepository>((ref) => MockLabRepository(ref.watch(mockJsonSourceProvider)));

final notifikasiRepositoryProvider = Provider<NotifikasiRepository>(
  (ref) => MockNotifikasiRepository(ref.watch(mockJsonSourceProvider)),
);

// Lokal: token & preferensi (bukan data pasien).

final keyValueStoreProvider = Provider<KeyValueStore>((ref) => SecureKeyValueStore());

final biometrikServiceProvider = Provider<BiometrikService>((ref) => LocalAuthBiometrik());

final layarAmanProvider = Provider<LayarAman>((ref) => LayarAmanAndroid());

// Data. UI membaca lewat provider ini; refresh dengan ref.invalidate(...).

final dokterProvider = FutureProvider<Dokter>((ref) => ref.watch(profilRepositoryProvider).getDokter());

final ringkasanBerandaProvider = FutureProvider.autoDispose<RingkasanBeranda>(
  (ref) => ref.watch(berandaRepositoryProvider).getRingkasan(),
);

final daftarPasienIgdProvider = FutureProvider.autoDispose<List<PasienIgd>>(
  (ref) => ref.watch(igdRepositoryProvider).getDaftarPasien(),
);

final serahTerimaProvider = FutureProvider.autoDispose<String?>(
  (ref) => ref.watch(igdRepositoryProvider).getSerahTerima(),
);

final headerPasienProvider = FutureProvider.autoDispose.family<HeaderPasien, String>(
  (ref, noReg) => ref.watch(igdRepositoryProvider).getHeader(noReg),
);

final kajianAwalProvider = FutureProvider.autoDispose.family<KajianAwal, String>(
  (ref, noReg) => ref.watch(igdRepositoryProvider).getKajianAwal(noReg),
);

final cpptProvider = FutureProvider.autoDispose.family<List<Cppt>, String>(
  (ref, noReg) => ref.watch(igdRepositoryProvider).getCppt(noReg),
);

final disposisiProvider = FutureProvider.autoDispose.family<Disposisi, String>(
  (ref, noReg) => ref.watch(igdRepositoryProvider).getDisposisi(noReg),
);

final labMasukProvider = FutureProvider.autoDispose<List<LabMasuk>>(
  (ref) => ref.watch(labRepositoryProvider).getLabMasuk(),
);

final labPasienProvider = FutureProvider.autoDispose.family<LabPasien, String>(
  (ref, noReg) => ref.watch(labRepositoryProvider).getLabPasien(noReg),
);

final trenLabProvider = FutureProvider.autoDispose.family<TrenLab?, ({String noReg, String item})>(
  (ref, arg) => ref.watch(labRepositoryProvider).getTren(arg.noReg, arg.item),
);

final notifikasiProvider = FutureProvider.autoDispose<List<Notifikasi>>(
  (ref) => ref.watch(notifikasiRepositoryProvider).getNotifikasi(),
);
