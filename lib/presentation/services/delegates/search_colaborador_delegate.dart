import 'package:dicta_app/infraestructure/models/colaborador/colaborador_model.dart';
import 'package:flutter/material.dart';

typedef SearchColaboradorCallback = Future<List<ColaboradorModel>> Function(
    String query);

class SearchColaboradorDelegate extends SearchDelegate<ColaboradorModel?> {
  final SearchColaboradorCallback searchColaboradorCallback;
  SearchColaboradorDelegate({required this.searchColaboradorCallback});

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
