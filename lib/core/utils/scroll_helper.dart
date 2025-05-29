import 'package:flutter/material.dart';

class ScrollHelper {
  late ScrollController scrollController;
  final Function onLoadMore;

  ScrollHelper({required this.onLoadMore}) {
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 100) {
      onLoadMore();
    }
  }

  void dispose() {
    scrollController.dispose();
  }
}
