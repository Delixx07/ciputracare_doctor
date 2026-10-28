import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/widgets/page_header.dart';
import '../features/notif/notif_providers.dart';
import 'routes.dart';

/// [PageHeader] untuk halaman tab: lonceng membuka /notifikasi dengan badge belum dibaca.
class TabPageHeader extends ConsumerWidget {
  const TabPageHeader({super.key, required this.title, this.subtitle, this.label = 'CiputraCare Doctor'});

  final String title;
  final String? subtitle;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageHeader(
      title: title,
      subtitle: subtitle,
      label: label,
      badgeCount: ref.watch(jumlahBelumDibacaProvider),
      onNotifikasi: () => context.push(Routes.notifikasi),
    );
  }
}
