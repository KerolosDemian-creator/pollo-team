import 'package:flutter/material.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details_widgets/product_details_body.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: const ProductDetailsBody(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => () {},
          child: const SizedBox(
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          ),
        ),
        actions: [
          SizedBox(
            child: IconButton(
              icon: const Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: const Icon(Icons.share_outlined, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
