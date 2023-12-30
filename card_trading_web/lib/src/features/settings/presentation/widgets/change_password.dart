import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangePassword extends StatefulHookConsumerWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends ConsumerState<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
