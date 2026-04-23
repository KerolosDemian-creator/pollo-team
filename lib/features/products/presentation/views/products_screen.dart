import 'package:flutter/material.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/products/presentation/views/widgets/products_body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ProductsBody(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'title',
          style: TextStyles.style22W600(),
        ),
        centerTitle: true,
      ),
    );
  }
}
