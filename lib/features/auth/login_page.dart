import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../data/repositories/auth_repository.dart';
import 'auth_controller.dart';

const _versi = 'v1.0';

/// Masuk dengan akun Medinfras (kode dokter atau email + kata sandi).
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _kode = TextEditingController();
  final _sandi = TextEditingController();
  bool _ingat = true;
  bool _sandiTerlihat = false;
  bool _sibuk = false;
  String? _galat;

  @override
  void dispose() {
    _kode.dispose();
    _sandi.dispose();
    super.dispose();
  }

  Future<void> _masuk() async {
    setState(() => _galat = null);
    if (!_formKey.currentState!.validate()) return;
    setState(() => _sibuk = true);
    try {
      // Setelah berhasil, router mengarahkan ke Beranda / Buat PIN.
      await ref.read(authControllerProvider.notifier).masuk(_kode.text, _sandi.text, ingat: _ingat);
    } on LoginGagal catch (e) {
      if (mounted) setState(() => _galat = e.pesan);
    } catch (_) {
      if (mounted) setState(() => _galat = 'Tidak dapat terhubung. Periksa koneksi lalu coba lagi.');
    } finally {
      if (mounted) setState(() => _sibuk = false);
    }
  }

  void _lupaSandi() {
    showModalBottomSheet<void>(context: context, showDragHandle: true, builder: (context) => const _LupaSandiSheet());
  }

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authControllerProvider);
    final labelStyle = AppText.caption.copyWith(color: AppColors.ink, fontWeight: FontWeight.w600);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.s5),
            child: AutofillGroup(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/images/logo_full.png',
                      height: AppSize.logoLogin,
                      semanticLabel: 'CiputraCare Doctor',
                    ),
                    const SizedBox(height: AppSpacing.s3),
                    Center(
                      child: Container(width: AppSize.accentShort, height: AppSize.accentLine, color: AppColors.gold),
                    ),
                    const SizedBox(height: AppSpacing.s5),
                    Text('Selamat datang', style: AppText.titleLg, textAlign: TextAlign.center),
                    const SizedBox(height: AppSpacing.s1),
                    Text(
                      'Masuk dengan akun MEDINFRAS · IGD & Laboratorium',
                      style: AppText.caption,
                      textAlign: TextAlign.center,
                    ),
                    if (auth.pesan != null) ...[const SizedBox(height: AppSpacing.s4), _Pemberitahuan(auth.pesan!)],
                    const SizedBox(height: AppSpacing.s6),
                    Text('Kode dokter atau email', style: labelStyle),
                    const SizedBox(height: AppSpacing.s2),
                    TextFormField(
                      controller: _kode,
                      enabled: !_sibuk,
                      textInputAction: TextInputAction.next,
                      autofillHints: const [AutofillHints.username],
                      autocorrect: false,
                      style: AppText.body,
                      decoration: const InputDecoration(prefixIcon: Icon(Icons.person_outline), hintText: 'mis. D0412'),
                      validator: (v) => (v ?? '').trim().isEmpty ? 'Isi kode dokter atau email.' : null,
                    ),
                    const SizedBox(height: AppSpacing.s4),
                    Text('Kata sandi', style: labelStyle),
                    const SizedBox(height: AppSpacing.s2),
                    TextFormField(
                      controller: _sandi,
                      enabled: !_sibuk,
                      obscureText: !_sandiTerlihat,
                      textInputAction: TextInputAction.done,
                      autofillHints: const [AutofillHints.password],
                      onFieldSubmitted: (_) => _masuk(),
                      style: AppText.body,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          tooltip: _sandiTerlihat ? 'Sembunyikan kata sandi' : 'Tampilkan kata sandi',
                          onPressed: () => setState(() => _sandiTerlihat = !_sandiTerlihat),
                          icon: Icon(_sandiTerlihat ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                        ),
                      ),
                      validator: (v) => (v ?? '').isEmpty ? 'Isi kata sandi.' : null,
                    ),
                    if (_galat != null) ...[const SizedBox(height: AppSpacing.s3), _Galat(_galat!)],
                    const SizedBox(height: AppSpacing.s3),
                    Row(
                      children: [
                        Expanded(
                          child: MergeSemantics(
                            child: Row(
                              children: [
                                Switch(value: _ingat, onChanged: _sibuk ? null : (v) => setState(() => _ingat = v)),
                                const SizedBox(width: AppSpacing.s2),
                                Flexible(child: Text('Ingat perangkat', style: AppText.body)),
                              ],
                            ),
                          ),
                        ),
                        TextButton(onPressed: _lupaSandi, child: const Text('Lupa kata sandi?')),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.s4),
                    FilledButton(
                      onPressed: _sibuk ? null : _masuk,
                      child: _sibuk
                          ? const SizedBox.square(
                              dimension: AppSize.icon,
                              child: CircularProgressIndicator(strokeWidth: AppSize.stroke, color: AppColors.onBrand),
                            )
                          : const Text('Masuk'),
                    ),
                    if (auth.status == AuthStatus.terkunci) ...[
                      const SizedBox(height: AppSpacing.s3),
                      FilledButton.tonalIcon(
                        onPressed: _sibuk ? null : () => context.go(Routes.pin),
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColors.brandSoft,
                          foregroundColor: AppColors.brand,
                          side: const BorderSide(color: AppColors.brandPastel),
                        ),
                        icon: const Icon(Icons.fingerprint),
                        label: const Text('Masuk dengan biometrik / PIN'),
                      ),
                    ],
                    const SizedBox(height: AppSpacing.s8),
                    Text('Ciputra Hospital · $_versi', style: AppText.small, textAlign: TextAlign.center),
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

class _Galat extends StatelessWidget {
  const _Galat(this.pesan);

  final String pesan;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      liveRegion: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.error_outline, size: AppSize.iconSm, color: AppColors.danger),
          const SizedBox(width: AppSpacing.s2),
          Expanded(
            child: Text(pesan, style: AppText.caption.copyWith(color: AppColors.danger)),
          ),
        ],
      ),
    );
  }
}

/// Pesan dari sesi sebelumnya, mis. terlalu banyak percobaan PIN.
class _Pemberitahuan extends StatelessWidget {
  const _Pemberitahuan(this.pesan);

  final String pesan;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s3),
      decoration: const BoxDecoration(color: AppColors.amberSoft, borderRadius: BorderRadius.all(AppRadius.md)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.info_outline, size: AppSize.iconSm, color: AppColors.amber),
          const SizedBox(width: AppSpacing.s2),
          Expanded(
            child: Text(pesan, style: AppText.caption.copyWith(color: AppColors.amber)),
          ),
        ],
      ),
    );
  }
}

/// Reset kata sandi dilakukan di Medinfras / oleh IT, bukan di aplikasi ini.
class _LupaSandiSheet extends StatelessWidget {
  const _LupaSandiSheet();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(AppSpacing.s4, 0, AppSpacing.s4, AppSpacing.s4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Lupa kata sandi', style: AppText.title),
            const SizedBox(height: AppSpacing.s2),
            Text(
              'Akun aplikasi ini sama dengan akun MEDINFRAS. Untuk mengatur ulang kata sandi, '
              'hubungi IT Ciputra Hospital.',
              style: AppText.body,
            ),
            const SizedBox(height: AppSpacing.s5),
            FilledButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Tutup')),
          ],
        ),
      ),
    );
  }
}
