import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_com_route/domain/model/category.dart';
import 'package:flutter/material.dart';

class HomeCategoryWidget extends StatelessWidget {
  Category category;
  HomeCategoryWidget(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(64),
          child: CachedNetworkImage(
            imageUrl: category.image ?? "",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            width: 124,
            height: 124,
          ),
        ),
        Text(category.name ?? ""),
      ],
    );
  }
}
