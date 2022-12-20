// ignore_for_file: depend_on_referenced_packages

import 'package:entube/components/LogoLoading.dart';
import 'package:entube/state.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_exec/ferry_exec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef OperationResponseBuilder<TData, TVars> = Widget Function(
    OperationResponse<TData, TVars> rsp);

class DataWaiter<TData, TVars> extends HookConsumerWidget {
  final OperationRequest<TData, TVars> req;
  final OperationResponseBuilder<TData, TVars> builder;
  final Widget? loading;
  const DataWaiter(
      {super.key, required this.req, required this.builder, this.loading});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(gqlClientP(FetchPolicy.CacheAndNetwork));
    //final client = ref.watch(gqlClientP(FetchPolicy.NetworkOnly));
    debugPrint('run DataWaiter');
    Stream stream = const Stream.empty();
    useEffect(() {
      stream = client.request(req);
      return null;
    }, [req]);

    final rsp = useStream(stream);
    if (rsp.hasError) {
      return AlertDialog(
          title: const Text('Error'), content: Text(rsp.error.toString()));
    }

    if (rsp.data == null || rsp.data!.loading) {
      return loading ?? const LogoLoading();
    }
    if (rsp.data.hasErrors) {
      return AlertDialog(
          title: const Text('Error'),
          content:
              Text("${rsp.data.graphqlErrors} \n ${rsp.data.linkException}"));
    }
    return builder(
      rsp.data!,
    );
  }
}
