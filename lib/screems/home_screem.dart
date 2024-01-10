import 'package:flutter/material.dart';
import 'package:med_app/screems/screems.dart';
import 'package:med_app/services/services.dart';
import 'package:med_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreem extends StatelessWidget {
  const HomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    //final productsService = Provider.of<ProductsService>(context);

    //if (productsService.isLoading) return const LoadingScreem();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'product'),
              child: const ProductCard())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
