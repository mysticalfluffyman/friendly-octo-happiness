import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yit/src/presentation/features/search/cubit/search_image_cubit.dart';

import '../widgets/image_widget.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite images'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: BlocBuilder<SearchImageCubit, SearchImageState>(
            builder: (context, state) {
              return ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 3.5,
                    minHeight: MediaQuery.of(context).size.height),
                child: Wrap(
                  spacing: MediaQuery.of(context).size.width * 0.15,
                  runSpacing: MediaQuery.of(context).size.height * 0.05,
                  children: state.favoriteImages
                      .map((e) => ImageWidget(
                          imageUrl: e.largeImageURL ?? '',
                          onTap: () => showDialog(
                              context: context,
                              builder: (builder) => AlertDialog(
                                    title: const Text(
                                        'Do you want to remove the image from favorites'),
                                    actions: [
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('No')),
                                      TextButton(
                                          onPressed: () {
                                            context
                                                .read<SearchImageCubit>()
                                                .removeFromFavorites(image: e);
                                            Navigator.pop(context);
                                          },
                                          child: const Text('Yes'))
                                    ],
                                  )),
                          isFav: true,
                          ownerName: e.user ?? '',
                          imageSize: e.imageSize.toString()))
                      .toList(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
