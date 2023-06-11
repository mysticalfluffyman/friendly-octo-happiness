import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///
class BlocWrapper<T extends Cubit> extends StatelessWidget {
  ///
  const BlocWrapper({super.key, required this.child, required this.cubit});

  ///
  final Widget child;

  ///
  final T cubit;
  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final context) => cubit,
        child: child,
      );
}
