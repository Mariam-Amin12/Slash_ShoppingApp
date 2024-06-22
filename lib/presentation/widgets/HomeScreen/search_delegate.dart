
import 'package:flutter/material.dart';
import 'package:shopping/data/constants/colors/home_colors.dart';

import 'package:shopping/domain/entities/product_entity.dart';


class CustomSearchDelegate extends SearchDelegate {
  final Future<List<ProductEntity>?> productList;


  late Future<List<String>?> matchQuery;

  CustomSearchDelegate(this.productList)
      : super(
          searchFieldStyle: const TextStyle(fontSize: 14),
          searchFieldLabel: "Search here ...",
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
        );
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(
            Icons.clear,
            color: HomeColors().darkGray,
          )),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(
          Icons.arrow_back,
          color:HomeColors().darkGray,
        ));
  }

  Future<List<String>?> fetchSearchResults(String query) async {
    List<String>? resultList = await productList.then((list) {
      return list?.map((element) => element.name!).toList();
    });

    return resultList;
  }

  @override
  Widget buildResults(BuildContext context) {
    matchQuery = fetchSearchResults(query);



    return FutureBuilder<List<String>?>(
      future: matchQuery,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {

          final results = snapshot.data?.where(
              (item) => item.toLowerCase().contains(query.toLowerCase()));

          if (results == null || results.isEmpty) {
            return const Center(
              child: Text('No results found.'),
            );
          } else {
            return ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                final item = results.elementAt(index);

                return ListTile(
                  title: Text(item),

                );
              },
            );
          }
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    matchQuery = fetchSearchResults(query);



    return FutureBuilder<List<String>?>(
      future: matchQuery,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {

          final results = snapshot.data?.where(
              (item) => item.toLowerCase().contains(query.toLowerCase()));

          if (results == null || results.isEmpty) {
            return const Center(
              child: Text('No results found.'),
            );
          } else {
            return ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                final item = results.elementAt(index);

                return ListTile(
                  title: Text(item),

                );
              },
            );
          }
        }
      },
    );
  }
}



