import 'package:flutter/material.dart';
import 'package:yit/src/presentation/features/search/cubit/search_image_cubit.dart';
import 'package:yit/src/presentation/features/search/views/search_view.dart';
import 'package:yit/src/presentation/utils/wrappers/bloc_wrapper.dart';

import 'injection_container.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initLocator();

  runApp(const MyApp());
}

///
class MyApp extends StatelessWidget {
  ///
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => BlocWrapper(
        cubit: serviceLocator.get<SearchImageCubit>(),
        child: const MaterialApp(
          title: 'Young Innovations Task',
          home: SearchView(),
        ),
      );
}
