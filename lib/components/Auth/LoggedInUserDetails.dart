import 'package:entube/components/AcquiringWords/index.dart';
import 'package:entube/components/Auth/index.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './state.dart';

const rowSpacing = SizedBox(height: 12);

class LoggedInUserDetails extends HookConsumerWidget {
  const LoggedInUserDetails({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authP);

    final textTheme = Theme.of(context).textTheme;
    const cellPadding = EdgeInsets.all(4);
    final currentUser = auth.currentUser!;
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome ${currentUser.email}!',
            style: textTheme.headline5,
          ),
          rowSpacing,
          Text('User details:', style: textTheme.caption),
          rowSpacing,
          Table(
            defaultColumnWidth: const IntrinsicColumnWidth(),
            children: [
              for (final row in currentUser.toJson().entries)
                TableRow(
                  children: [
                    Padding(
                      padding: cellPadding.copyWith(right: 12),
                      child: Text(row.key),
                    ),
                    Padding(
                      padding: cellPadding,
                      child: Text('${row.value}'),
                    ),
                  ],
                )
            ],
          ),
          rowSpacing,
          ElevatedButton(
            onPressed: () {
              ref.read(authSNP.notifier).logout();
            },
            child: const Text('Logout'),
          ),
          rowSpacing,
          const AcquiringWords(),
        ],
      ),
    ));
  }
}
