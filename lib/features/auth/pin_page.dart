import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import 'auth_controller.dart';
import 'pin_pad.dart';

enum PinMode {
  /// Buka kunci sesi.
  buka,

  /// Buat PIN baru setelah masuk dengan "Ingat perangkat" (diketik dua kali).
  buat,
}

/// PIN lokal 6 digit. Hanya membuka kunci di perangkat ini.
class PinPage extends ConsumerStatefulWidget {
  const PinPage({super.key, this.mode = PinMode.buka, this.onPakaiKataSandi});

  final PinMode mode;

  /// Dipakai saat PIN tampil sebagai kunci sesi (di luar router). Default: ke /login.
  final VoidCallback? onPakaiKataSandi;

  @override
  ConsumerState<PinPage> createState() => _PinPageState();
}

class _PinPageState extends ConsumerState<PinPage> {
  static const _panjang = AuthController.panjangPin;

  String _pin = '';

  /// Mode buat: PIN pertama, menunggu diulang.
  String? _pinPertama;
  String? _galat;
  bool _sibuk = false;

  AuthController get _auth => ref.read(authControllerProvider.notifier);

  @override
  void initState() {
    super.initState();
    if (widget.mode == PinMode.buka && ref.read(authControllerProvider).biometrik) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _biometrik());
    }
  }

  Future<void> _biometrik() async {
    if (_sibuk) return;
    setState(() => _sibuk = true);
    await _auth.bukaDenganBiometrik();
    if (mounted) setState(() => _sibuk = false);
  }

  void _ketik(String d) {
    if (_pin.length >= _panjang) return;
    setState(() {
      _pin += d;
      _galat = null;
    });
    if (_pin.length == _panjang) _selesai();
  }

  void _hapus() {
    if (_pin.isEmpty) return;
    setState(() => _pin = _pin.substring(0, _pin.length - 1));
  }

  Future<void> _selesai() async {
    final pin = _pin;
    switch (widget.mode) {
      case PinMode.buka:
        setState(() => _sibuk = true);
        final ok = await _auth.bukaDenganPin(pin);
        if (!mounted || ok) return;
        final sisa = AuthController.maksPercobaanPin - ref.read(authControllerProvider).gagalPin;
        setState(() {
          _sibuk = false;
          _pin = '';
          _galat = 'PIN salah · sisa $sisa percobaan';
        });
      case PinMode.buat:
        if (_pinPertama == null) {
          setState(() {
            _pinPertama = pin;
            _pin = '';
          });
        } else if (_pinPertama == pin) {
          setState(() => _sibuk = true);
          await _auth.buatPin(pin);
        } else {
          setState(() {
            _pinPertama = null;
            _pin = '';
            _galat = 'PIN tidak sama. Ulangi dari awal.';
          });
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authControllerProvider);
    final buat = widget.mode == PinMode.buat;
    final judul = buat
        ? (_pinPertama == null ? (auth.punyaPin ? 'PIN baru' : 'Buat PIN') : 'Ulangi PIN')
        : 'Masukkan PIN';
    final subjudul = buat
        ? 'PIN $_panjang digit untuk membuka aplikasi di perangkat ini'
        : [?auth.dokter?.nama, '$_panjang digit'].join(' · ');

    return Scaffold(
      body: SafeArea(
        // Bisa digulir di layar pendek; di layar biasa papan angka tetap di bawah.
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.s4),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight - AppSpacing.s4 * 2),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    const SizedBox(height: AppSpacing.s6),
                    Image.asset('assets/images/logo_icon.png', height: AppSpacing.s8 * 1.5, excludeFromSemantics: true),
                    const SizedBox(height: AppSpacing.s4),
                    Semantics(header: true, child: Text(judul, style: AppText.titleLg)),
                    const SizedBox(height: AppSpacing.s2),
                    Text(subjudul, style: AppText.caption, textAlign: TextAlign.center),
                    const SizedBox(height: AppSpacing.s5),
                    PinDots(panjang: _panjang, terisi: _pin.length, galat: _galat != null),
                    const SizedBox(height: AppSpacing.s3),
                    SizedBox(
                      height: AppText.caption.fontSize! * 2,
                      child: _galat == null
                          ? null
                          : Semantics(
                              liveRegion: true,
                              child: Text(_galat!, style: AppText.caption.copyWith(color: AppColors.danger)),
                            ),
                    ),
                    const Spacer(),
                    PinKeypad(onDigit: _ketik, onHapus: _hapus, enabled: !_sibuk),
                    const SizedBox(height: AppSpacing.s4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: buat
                          ? [
                              TextButton(
                                onPressed: _sibuk ? null : _auth.lewatiPin,
                                child: Text(auth.punyaPin ? 'Batal' : 'Nanti saja'),
                              ),
                            ]
                          : [
                              if (auth.biometrik)
                                TextButton(
                                  onPressed: _sibuk ? null : _biometrik,
                                  child: const Text('Gunakan biometrik'),
                                ),
                              TextButton(
                                onPressed: _sibuk ? null : (widget.onPakaiKataSandi ?? () => context.go(Routes.login)),
                                child: const Text('Pakai kata sandi'),
                              ),
                            ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
