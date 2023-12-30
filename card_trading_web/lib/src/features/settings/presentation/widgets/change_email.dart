import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class ChangeEmail extends StatefulHookConsumerWidget {
  const ChangeEmail({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChangeEmailState();
}

class _ChangeEmailState extends ConsumerState<ChangeEmail> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}