import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yit/src/presentation/features/search/cubit/search_image_cubit.dart';
import 'package:yit/src/presentation/features/search/widgets/image_widget.dart';

import 'favorite_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  static final _searchEditingController = TextEditingController();
  static final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const FavoriteView())),
        child: const Icon(
          CupertinoIcons.heart_circle,
          size: 40,
        ),
      ),
      appBar: AppBar(
        title: Text('Look for images'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextField(
                    focusNode: _focusNode,
                    controller: _searchEditingController,
                    decoration: InputDecoration(
                        hintText: 'Yellow Flower',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onChanged: (value) {
                      // do something
                    },
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      _focusNode.unfocus();
                      context.read<SearchImageCubit>().searchImage(
                          searchString: _searchEditingController.text);
                    },
                    child: Container(
                      height: 80,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              BlocBuilder<SearchImageCubit, SearchImageState>(
                builder: (context, state) {
                  return state.loadingSearch
                      ? const Center(child: CircularProgressIndicator())
                      : Column(
                          children: [
                            state.changingPage
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        3.5,
                                    width: double.infinity,
                                    child: Wrap(
                                      spacing:
                                          MediaQuery.of(context).size.width *
                                              0.15,
                                      runSpacing:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      children: state.searchImages.map((e) {
                                        final isFav =
                                            state.favoriteImages.contains(e);

                                        return ImageWidget(
                                            imageUrl: e.largeImageURL ?? '',
                                            onTap: () => context
                                                .read<SearchImageCubit>()
                                                .addToFavorites(image: e),
                                            isFav: isFav,
                                            ownerName: e.user ?? '',
                                            imageSize: e.imageSize.toString());
                                      }).toList(),
                                    ),
                                  ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<SearchImageCubit>()
                                        .goBackPage();
                                  },
                                  child: Container(
                                    height: 80,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                    child: const Center(
                                        child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    height: 80,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                    child: Center(
                                        child: Text(
                                      context
                                          .read<SearchImageCubit>()
                                          .state
                                          .pageNumber
                                          .toString(),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.read<SearchImageCubit>().addPage();
                                  },
                                  child: Container(
                                    height: 80,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                    child: const Center(
                                        child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
