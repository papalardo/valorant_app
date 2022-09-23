import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

typedef OnInitBloc<T> = void Function(T);

typedef BlocWidgetBuilder<B, S> = Widget Function(
    BuildContext context, S state, B bloc);

class BlocWrapper<B extends StateStreamableSource<S>, S>
    extends StatelessWidget {
  const BlocWrapper({
    Key? key,
    this.onInit,
    this.builder,
    this.listener,
    this.buildWhen,
    this.listenWhen,
  }) : super(key: key);

  final OnInitBloc? onInit;
  final BlocWidgetBuilder<B, S>? builder;
  final BlocWidgetListener<S>? listener;
  final BlocBuilderCondition<S>? buildWhen;
  final BlocListenerCondition<S>? listenWhen;

  @override
  Widget build(BuildContext context) {
    if (onInit == null) {
      return _createConsumer(Modular.get<B>());
    }

    return BlocProvider<B>(
      create: (_) {
        var bloc = Modular.get<B>();
        onInit!(bloc);
        return bloc;
      },
      child: _createConsumer(),
    );
  }

  _createConsumer([B? bloc]) {
    return BlocConsumer<B, S>(
      bloc: bloc,
      builder: (context, state) {
        if (builder == null) {
          return const SizedBox();
        }
        return builder!(context, state, Modular.get<B>());
      },
      listener: listener ?? (_, __) {},
      buildWhen: buildWhen,
      listenWhen: listenWhen,
    );
  }
}
